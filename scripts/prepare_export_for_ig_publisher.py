#!/usr/bin/env python3
"""Turn the Simplifier IG export into IG-publisher input.

Reads simplifier-export/us-behavioral-health-profiles@<version>.zip, where
<version> comes from sushi-config.yaml, and writes:

    *.html      ->  input/pagecontent/*.xml            (pages)
    static/     ->  ig-template/.../content/static/    (css, js, images)
    artifacts/  ->  ig-template/.../content/artifacts/ (raw resources to download)

On top of converting the format it repairs what the export gets wrong; every
such repair is listed in ig-publisher-quirks.md and should eventually be fixed
in the Simplifier exporter instead.

Idempotent. export-ig.ps1 runs it straight after downloading the zip; run it on
its own to reimport the zip already in simplifier-export/. Nothing under
input/pagecontent or ig-template/package/content should ever be hand-edited.
"""
import json
import re
import shutil
import sys
import zipfile
from pathlib import Path

from lxml import etree, html

ROOT = Path(__file__).resolve().parent.parent
EXPORT_DIR = ROOT / "simplifier-export"
PAGES = ROOT / "input" / "pagecontent"
CONTENT = ROOT / "ig-template" / "package" / "content"

# Copied verbatim into the output root. 'artifacts' holds the raw resource
# files the profile and example pages link to - we keep Simplifier's own
# artifact pages and downloads rather than the ones the publisher generates,
# so those files have to ship with the guide.
VERBATIM = ("static", "artifacts")

# static/styles/*/master.html are Simplifier style-template sources, not assets.
# Nothing links to them, they still hold unsubstituted {{variable:...}}
# placeholders, and the publisher link-checks them and reports the placeholders
# as broken. Leave them out of the published guide.
VERBATIM_SKIP = ".html"

XHTML = "http://www.w3.org/1999/xhtml"
PROLOG = '<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE html>\n'

# The output is parsed as XML by the publisher but served as text/html to
# browsers, so it has to be valid as both. XML serialisation collapses any
# empty element to <tag/>, and a browser reading text/html ignores that
# trailing slash on anything that is not a void element: <script src=".."/>
# never closes, and the rest of the page is swallowed as script text. Give
# every non-void element an explicit end tag.
HTML_VOID = {"area", "base", "br", "col", "embed", "hr", "img", "input",
             "link", "meta", "param", "source", "track", "wbr"}

# SUSHI reads input/pagecontent/<x>-intro.* and <x>-notes.* as fragments to
# splice into resource <x>'s page, not as pages, so a page whose slug ends in
# one of these is silently dropped from ImplementationGuide.definition.page.
# Rename those and fix up the links that point at them.
SUSHI_RESERVED = ("-intro", "-notes", "-summary")
RENAME_SUFFIX = "-page"

# The publication process generates history.html itself, and refuses an IG that
# supplies one ("That file name is reserved by the publication process"). The
# export ships a version of it, but only ever links to the published absolute
# URL, so dropping our copy costs nothing.
RESERVED_PAGES = {"history.html"}

# Simplifier's own page templates. The leading underscore is its marker for
# "not guide content", nothing in the guide links to them, and they were being
# published as pages of the IG - 12 of them, in the page tree and the TOC.
INTERNAL_PAGE_PREFIX = "ig-_pagetemplates-"

# The export has no index.html of its own, but the IG needs a landing page, so
# build the redirect here.
# ponytail: a redirect, matching what we publish today. Making ig-home the index
# outright would be better for an HL7-published IG, but renames a page the
# Simplifier side links to by name.
# The publish box carries no markers here - REGEX_FIXES adds them to every page.
HOME_PAGE = "ig-home.html"
INDEX_PAGE = """<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8">
<meta http-equiv="refresh" content="0; url=%s">
<link rel="canonical" href="%s">
<title>%s</title></head>
<body>
<p id="publish-box">Publish Box goes here</p>
<p><a href="%s">%s</a></p>
</body></html>
"""

# Export bugs we patch on the way in.
#   staging: the guide was exported from staging because production cannot yet
#            hold two versions of one package in scope.
#            Staging also scopes links and page titles to the project
#            (project:bh-ig) rather than the package, and those links 404 on
#            production; main() rescopes them to the package, as production does.
#   /resolve: host-relative, so it resolves against fhir.org, not Simplifier.
STAGING_SCOPE = "project:bh-ig"
URL_FIXES = {
    "https://staging.simplifier.net/": "https://simplifier.net/",
    '"/resolve?': '"https://simplifier.net/resolve?',
}

# LOINC codes and the LOINC system are linked to Simplifier's page for
# CodeSystem-v3-loinc.json in hl7.terminology, which shows a JSON file rather
# than the code. Link them the way the publisher does: the system to
# http://loinc.org, each code to https://loinc.org/<code>/.
LOINC_LINK = re.compile(
    r'<a href="https://simplifier\.net/resolve\?[^"]*CodeSystem-v3-loinc\.json"([^>]*)>([^<]*)</a>')
LOINC_CODE = re.compile(r"(LA|LP)?\d+-\d")


def loinc_link(m: re.Match) -> str:
    attrs = re.sub(r'\s*title="[^"]*"', "", m.group(1))  # the title names the json file
    text = m.group(2)
    href = f"https://loinc.org/{text}/" if LOINC_CODE.fullmatch(text) else "http://loinc.org"
    return f'<a href="{href}"{attrs}>{text}</a>'


REGEX_FIXES = [
    # The dependency list on the downloads page links each package as a local
    # packages/<id>@<version>.tgz. The export ships no such folder (and neither
    # does the publisher), so point them at the FHIR package registry instead.
    (re.compile(r'"packages/([^"@]+)@([^"]+)\.tgz"'),
     r'"https://packages.fhir.org/\1/\2"'),
    # The publisher's HTML allow-list (XhtmlNode) has no <time>, so the two in
    # the page footer - the copyright year and the build date - draw a warning
    # on every page. They are presentational, so a <span> does the same job.
    (re.compile(r"<time(\s[^>]*)?>"), r"<span\1>"),
    (re.compile(r"</time>"), "</span>"),
    # The export renders its own publish box - the same <p id="publish-box"> the
    # base template uses, in the same place - saying the guide is "not an
    # authorized publication ... built by Simplifier.net". On a published HL7 IG
    # that text is simply wrong.
    #
    # HTMLInspector swaps in the real box by exact literal match, placeholder
    # words and all, so wrapping our own text in the markers passes its presence
    # check but leaves the wrong text in place. Hand it the exact placeholder.
    (re.compile(r'<p id="publish-box">.*?</p>', re.S),
     '<!--ReleaseHeader--><p id="publish-box">Publish Box goes here</p>'
     "<!--EndReleaseHeader-->"),
    (LOINC_LINK, loinc_link),
    # Element descriptions copied from the base spec keep the spec's relative
    # links (extensibility.html#modifierExtension, datatypes.html#Duration), so
    # they resolve against this guide. Point them at the R4 spec.
    # ponytail: the pages the export links today; the relative-link check in
    # main() fails on a new one, so add it here when it does.
    (re.compile(r'href="((?:extensibility|observation|datatypes|resource-definitions|'
                r'provenance-definitions|questionnaireresponse|extension-bodysite|'
                r'extension-observation-focuscode)\.html)'),
     r'href="http://hl7.org/fhir/R4/\1'),
]

# Pages the IG publisher writes itself, which the export may link to.
PUBLISHER_PAGES = {"qa.html", "toc.html", "artifacts.html"}

# Links into the raw resource files are wrong twice over. The export links to
# artifacts/package/<file>.json but ships the files under
# artifacts/fsh-generated/resources/, so every one of them 404s. And a reader
# who clicks a binding, an extension URL or a code expects the rendered page,
# not the raw JSON file; an element anchor inside a .json could never work
# anyway, and the publisher's link checker rejects it ("valid targets: []").
#
# Match the filename rather than the folder - the export has moved this path
# once already - and send each link to the artifact's rendered page, falling
# back to the raw file the zip ships when there is no page.
RAW_LINK = re.compile(r'"artifacts/[^"#]*?([^"/#]+\.json)(#[^"]*)?"')
ARTIFACT_PAGE = "ig-technical_artifacts-artifacts-"
EXPORTED_RESOURCES = "artifacts/fsh-generated/resources/"
ARTIFACT_SOURCES = ROOT / "guides" / "us-behavioral-health-profiles" / "ig" / "technical_artifacts" / "artifacts"

# Bindings, extension URLs and example references to this guide's own resources
# can also come as Simplifier resolve links (?canonical=<ours>/<Type>/<id> or
# ?reference=<Type>/<id>), which open the package file on Simplifier. Same
# treatment: the rendered page here, when there is one.
OWN_LINK = r'"https://simplifier\.net/resolve\?&amp;scope=package:{id}@[^&"]*&amp;' \
           r'(canonical={canonical}/|reference=)([A-Za-z]+)/([^"#&]+)"'


def sushi_config(key: str) -> str:
    text = (ROOT / "sushi-config.yaml").read_text(encoding="utf-8")
    match = re.search(rf"^{key}:\s*(.+?)\s*$", text, re.M)
    if not match:
        sys.exit(f"no {key} in sushi-config.yaml")
    return match.group(1)


def to_xhtml(source: bytes, dst: Path) -> None:
    # normalise CRLF first, otherwise the CRs survive as &#13; in the XML output
    doc = html.fromstring(source.replace(b"\r\n", b"\n"),
                          parser=html.HTMLParser(encoding="utf-8"))
    doc.set("xmlns", XHTML)  # the publisher's QA expects the XHTML namespace
    for el in doc.iter():
        if isinstance(el.tag, str) and el.tag not in HTML_VOID and el.text is None and len(el) == 0:
            el.text = ""  # forces <tag></tag> instead of <tag/>
    # serialise the element, not the tree: the export's own <?xml?> PI would
    # otherwise land after the declaration we write here
    body = etree.tostring(doc, method="xml", encoding="unicode")
    dst.write_text(PROLOG + body, encoding="utf-8")


def rewrite(page: Path, replacements: dict[str, str]) -> int:
    text = page.read_text(encoding="utf-8")
    hits = sum(text.count(old) for old in replacements)
    if hits:
        for old, new in replacements.items():
            text = text.replace(old, new)
        page.write_text(text, encoding="utf-8")
    return hits


def rewrite_re(page: Path, pattern: re.Pattern, replacement: str) -> int:
    text = page.read_text(encoding="utf-8")
    new, hits = pattern.subn(replacement, text)
    if hits:
        page.write_text(new, encoding="utf-8")
    return hits


def artifact_link_fixes(pages: list[Path], shipped: set[str]) -> dict[str, str]:
    """Repoint every link into the raw resource files.

    Links go to the rendered artifact page, which carries the same element
    ids. A bare link to a file with no page goes to wherever the file ships.
    """
    by_name = {name.rsplit("/", 1)[-1]: name for name in shipped}
    stems = {p.stem for p in pages}
    own = re.compile(OWN_LINK.format(id=re.escape(sushi_config("id")),
                                     canonical=re.escape(sushi_config("canonical"))))

    def page_for(slug: str) -> str | None:
        target = ARTIFACT_PAGE + slug
        if target not in stems and target + RENAME_SUFFIX in stems:
            target += RENAME_SUFFIX
        return target if target in stems else None

    fixes: dict[str, str] = {}
    for page in pages:
        text = page.read_text(encoding="utf-8")
        for m in RAW_LINK.finditer(text):
            whole, filename, anchor = m.group(0), m.group(1), m.group(2) or ""
            if whole in fixes:
                continue
            kind, _, ident = filename[: -len(".json")].partition("-")
            target = page_for(f"{kind.lower()}-{ident}")
            if target:
                fixes[whole] = f'"{target}.html{anchor}"'
            elif not anchor and filename in by_name:
                fixes[whole] = f'"{by_name[filename]}"'
            else:
                sys.exit(f"no artifact page or shipped file for {filename} "
                         f"(looked for {ARTIFACT_PAGE}{kind.lower()}-{ident}.html)")
        for m in own.finditer(text):
            is_reference = m.group(1) == "reference="
            kind, ident = m.group(2), m.group(3)
            target = page_for(f"example-{ident}" if is_reference else f"{kind.lower()}-{ident}")
            if target:  # otherwise leave it: it still resolves on Simplifier
                fixes[m.group(0)] = f'"{target}.html"'
    return fixes


LOCAL_ANCHOR_LINK = re.compile(r'href="([^"#:/?]+)\.html#([^"]+)"')
ANCHOR_ID = re.compile(r'\s(?:id|name)="([^"]+)"')


def drop_dangling_anchors(pages: list[Path]) -> int:
    """Link to the page itself where the anchor is not on it.

    The example renderer links every node it draws to the profile page's element
    anchor - Observation.category.coding.code, the synthetic .resourceType - but
    the profile page only has anchors for its snapshot elements, so most of them
    go nowhere and the publisher reports each as broken.
    ponytail: loses the deep link; the fix is for the renderer to link only
    elements that have an anchor (ig-publisher-quirks.md).
    """
    ids = {p.stem: set(ANCHOR_ID.findall(p.read_text(encoding="utf-8"))) for p in pages}

    def fix(m: re.Match) -> str:
        stem, anchor = m.group(1), m.group(2)
        return m.group(0) if stem not in ids or anchor in ids[stem] else f'href="{stem}.html"'

    return sum(rewrite_re(p, LOCAL_ANCHOR_LINK, fix) for p in pages)


def copy_renamed_pages(renamed: dict[str, str]) -> None:
    """Keep the name the publisher expects for a page SUSHI made us rename.

    The template's 'base' pattern gives mental-health-clinical-notes the page
    ...-clinical-notes.html, but it ships as ...-clinical-notes-page.html. A copy
    under the old name in the template content (copied to the output root, so
    SUSHI never sees it) keeps the publisher's links to it working, element
    anchors included - which a redirect would not.
    ponytail: the page ships twice; goes away once the publisher reads
    page-map.json instead of the 'base' pattern.
    """
    for old in CONTENT.glob("*.html"):
        old.unlink()
    for old, new in renamed.items():
        shutil.copyfile(PAGES / f"{new[:-len('.html')]}.xml", CONTENT / old)


def write_page_map(pages: list[Path], renamed: dict[str, str]) -> int:
    """Write input/page-map.json: every resource's url -> the page that renders it.

    So the publisher can link to our pages rather than
    derive them from a name pattern. Read from the artifact pages' frontmatter
    (canonical: for conformance resources, subject: for examples), so it holds
    whatever page Simplifier actually renders each resource on. Examples have no
    url of their own; they get <canonical>/<Type>/<id>.
    """
    base = sushi_config("canonical")
    stems = {p.stem for p in pages}
    urls = {}
    for md in sorted(ARTIFACT_SOURCES.glob("*.page.md")):
        m = re.search(r"^(canonical|subject):\s*(\S+)", md.read_text(encoding="utf-8"), re.M)
        if not m:
            continue  # an index page
        page = f"{ARTIFACT_PAGE}{md.name[:-len('.page.md')]}.html"
        page = renamed.get(page, page)
        if page[:-len(".html")] not in stems:
            sys.exit(f"{md.name} renders {m.group(2)}, but the export has no {page}")
        urls[m.group(2) if m.group(1) == "canonical" else f"{base}/{m.group(2)}"] = page

    ig = f"{base}/ImplementationGuide/{sushi_config('id')}"
    urls[ig] = "index.html"
    for f in sorted((ROOT / "fsh-generated" / "resources").glob("*.json")):
        r = json.loads(f.read_text(encoding="utf-8"))
        if r.get("url", f"{base}/{r['resourceType']}/{r['id']}") not in urls and r["resourceType"] != "ImplementationGuide":
            sys.exit(f"no page renders {r['resourceType']}/{r['id']} - page-map.json would be incomplete")
    (ROOT / "input" / "page-map.json").write_text(
        json.dumps(dict(sorted(urls.items())), indent=2) + "\n", encoding="utf-8")
    return len(urls)


def parses(p: Path) -> bool:
    try:
        etree.parse(str(p))
        return True
    except etree.XMLSyntaxError as e:
        print(f"  {p.name}: {e}", file=sys.stderr)
        return False


def extract_pages(zf: zipfile.ZipFile) -> dict[str, str]:
    """Write every root-level page as XHTML. Returns the renames applied."""
    names = sorted(n for n in zf.namelist() if "/" not in n and n.endswith(".html"))
    for skipped in sorted(RESERVED_PAGES & set(names)):
        print(f"skipped {skipped} (reserved by the publication process)")
    internal = [n for n in names if n.startswith(INTERNAL_PAGE_PREFIX)]
    if internal:
        print(f"skipped {len(internal)} {INTERNAL_PAGE_PREFIX}* pages (Simplifier internals)")
    names = [n for n in names
             if n not in RESERVED_PAGES and not n.startswith(INTERNAL_PAGE_PREFIX)]
    if not names:
        sys.exit("the export holds no pages")
    if HOME_PAGE not in names:
        sys.exit(f"the export has no {HOME_PAGE} to point index.html at")

    if "index.html" not in names:
        title = sushi_config("title")
        to_xhtml((INDEX_PAGE % (HOME_PAGE, HOME_PAGE, title, HOME_PAGE, title)).encode(),
                 PAGES / "index.xml")
        print(f"generated index.html (redirect to {HOME_PAGE}; the export has none)")

    renamed = {}
    for name in names:
        stem = name[: -len(".html")]
        if stem.endswith(SUSHI_RESERVED):
            renamed[name] = f"{stem}{RENAME_SUFFIX}.html"
            stem += RENAME_SUFFIX
        to_xhtml(zf.read(name), PAGES / f"{stem}.xml")
    for old, new in renamed.items():
        print(f"renamed {old} -> {new} (SUSHI reserves that suffix)")
    return renamed


def extract_verbatim(zf: zipfile.ZipFile) -> set[str]:
    shipped: set[str] = set()
    for folder in VERBATIM:
        dst = CONTENT / folder
        if dst.exists():
            shutil.rmtree(dst)
        members = [n for n in zf.namelist()
                   if n.startswith(folder + "/") and not n.endswith("/")
                   and not n.endswith(VERBATIM_SKIP)]
        for name in members:
            out = dst.parent / name
            out.parent.mkdir(parents=True, exist_ok=True)
            out.write_bytes(zf.read(name))
        shipped |= set(members)
        print(f"{len(members)} files -> {dst.relative_to(ROOT)}")
    return shipped


def main() -> int:
    version = sushi_config("version")
    archive = EXPORT_DIR / f"us-behavioral-health-profiles@{version}.zip"
    if not archive.is_file():
        sys.exit(f"no export for {version}: {archive}\n"
                 f"run .\\export-ig.ps1 first")
    print(f"importing {archive.name}")

    with zipfile.ZipFile(archive) as zf:
        # The export renders whatever resources the Simplifier project holds. If
        # the project was not synced after SUSHI ran, it ships stale resources
        # and the pages for the missing ones fail to render - all silently, in
        # the zip. Check before anything is written.
        exported = {n[len(EXPORTED_RESOURCES):]: n for n in zf.namelist()
                    if n.startswith(EXPORTED_RESOURCES) and not n.endswith("/")}
        local_dir = ROOT / "fsh-generated" / "resources"
        local = {p.name for p in local_dir.glob("*.json")}
        stale = sorted(n for n in exported.keys() & local
                       if json.loads(zf.read(exported[n]))
                       != json.loads((local_dir / n).read_text(encoding="utf-8")))
        if exported.keys() != local or stale:
            sys.exit("the export's resources do not match fsh-generated/resources - sync "
                     "the project to Simplifier and export again\n"
                     f"  only in the export: {sorted(exported.keys() - local)}\n"
                     f"  only local:         {sorted(local - exported.keys())}\n"
                     f"  content differs:    {stale}")
        print(f"the export's {len(exported)} resources match fsh-generated/resources")

        if PAGES.exists():
            shutil.rmtree(PAGES)
        PAGES.mkdir(parents=True)
        renamed = extract_pages(zf)
        shipped = extract_verbatim(zf)

    pages = sorted(PAGES.glob("*.xml"))
    fixes = {**renamed, **URL_FIXES,
             STAGING_SCOPE: f"package:{sushi_config('id')}@{version}"}
    print(f"{sum(rewrite(p, fixes) for p in pages)} link fixes applied")
    print(f"{sum(rewrite_re(p, *fix) for fix in REGEX_FIXES for p in pages)} "
          f"dependency, LOINC and disallowed-element fixes applied")

    links = artifact_link_fixes(pages, shipped)  # after the rename, so it sees final page names
    print(f"{sum(rewrite(p, links) for p in pages)} artifact links repointed "
          f"({len(links)} distinct targets)")
    print(f"{drop_dangling_anchors(pages)} links to missing element anchors now go to the page")
    copy_renamed_pages(renamed)
    print(f"{len(renamed)} renamed page(s) also copied under their old name -> {CONTENT.relative_to(ROOT)}")
    print(f"{write_page_map(pages, renamed)} resources -> input/page-map.json")
    print(f"{len(pages)} pages -> {PAGES.relative_to(ROOT)}")

    # the whole point of the conversion: every page must now parse as XML
    bad = [p.name for p in pages if not parses(p)]
    if bad:
        sys.exit(f"{len(bad)} page(s) still not well-formed XML")
    print("all pages are well-formed XML")

    left = [p.name for p in pages
            if re.search(r"staging\.simplifier\.net|scope=project:", p.read_text(encoding="utf-8"))]
    if left:
        sys.exit(f"staging URLs or project scopes survived in {len(left)} page(s): {left[:3]}")
    print("no staging URLs or project scopes remain")

    # a self-closed <script/> silently swallows the rest of the page in a browser
    selfclosed = re.compile(r"<([a-zA-Z][a-zA-Z0-9]*)\b[^>]*/>")
    broken = {
        (p.name, tag)
        for p in pages
        for tag in selfclosed.findall(p.read_text(encoding="utf-8"))
        if tag.lower() not in HTML_VOID
    }
    if broken:
        sys.exit(f"self-closed non-void elements would break rendering: {sorted(broken)[:5]}")
    print("no self-closed non-void elements")

    dangling = {
        target
        for p in pages
        for target in re.findall(r'href="(artifacts/[^"]*)"', p.read_text(encoding="utf-8"))
        if target.split("#")[0] not in shipped
    }
    if dangling:
        sys.exit(f"links point at artifacts the export does not ship: {sorted(dangling)[:3]}")
    print("every artifacts/ link resolves")

    known = {p.stem + ".html" for p in pages} | set(renamed) | PUBLISHER_PAGES
    unknown = {
        target
        for p in pages
        for target in re.findall(r'href="([^"#:/?]+\.html)', p.read_text(encoding="utf-8"))
        if target not in known
    }
    if unknown:
        sys.exit(f"relative links to pages this guide does not have: {sorted(unknown)[:5]}")
    print("every relative page link resolves")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
