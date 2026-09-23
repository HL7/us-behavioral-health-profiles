# Publishing a pre-rendered IG through the IG publisher: findings

Notes from wiring the Simplifier-generated **US Behavioral Health Profiles**
guide up as *input* to the HL7 IG publisher, so the publisher runs over it and
passes our pages through rather than us handing over a finished site.

This path works today, but it took a custom template and four non-obvious
workarounds to find. Each item below is something that cost real time, with the
code path where it happens, so it can be judged as "works as intended, document
it" or "fix the tool".

Tested with **IG Publisher 2.3.4**, **SUSHI 3.20.0**, `fhir.base.template#current`,
FHIR R4, on Windows.

---

## What a pass-through IG needs, once you know

For the record, the working setup is small:

```
ig.ini                     template = #ig-template
input/pagecontent/*.xml    complete XHTML documents, one per page
ig-template/package/
  package.json             { "base": "fhir.base.template", "dependencies": {...} }
  $root/config.json        pre-process without the pagecontent transform
  includes/template-page.html   emits the page content unwrapped
  content/static/          assets, copied verbatim to the output root
```

`template-page.html` is the whole trick: it emits `{% include %}` and nothing
else, so a page that is already a complete document lands in `output/`
untouched. Of our 113 pages, 100 come out byte-identical and 13 are
re-serialised by the publisher's own link fixer.

---

## 1. A contained template cannot deliver its `config.json`

**Severity: blocker.** This one is a genuine bug, not a documentation gap.

With `template = #ig-template`, `TemplateManager.installTemplate` loads the
folder via `NpmPackage.fromFolder`, which requires `<folder>/package/package.json`.
It then calls `unPackWithAppend` to write the template into `template/`.

In `NpmPackage.unPack`:

```java
String name = folder.getFolderName();
if (name.equals("package") || name.startsWith("package/") || name.startsWith("package\\")) {
    name = name.substring(8);
}
if (name.equals("$root")) { name = target; } else { name = path(target, name); }
```

For a **tgz** template, root-level files carry the folder name `$root`, so they
land at `template/config.json` — which is where `Template.<init>` looks.

For a **folder** template, `fromFolder` names that same set of files `package`.
The `equals("package")` branch deliberately skips the `substring`, so the name
stays `package`, and the files land at `template/package/config.json`. The build
then dies with:

```
File ...\BH-IG\template\config.json not found
    at org.hl7.fhir.igtools.templates.Template.<init>(Template.java:126)
```

So a contained template can ship `includes/`, `content/` and `layouts/`, but
never its own `config.json` — the one file it certainly needs.

**Our workaround:** a directory literally named `$root`:

```
ig-template/package/package.json      (required by fromFolder)
ig-template/package/$root/config.json (lands at template/config.json)
```

This works because `fromFolder` then names that folder `package/$root`, the
`startsWith("package/")` branch strips the prefix, and `$root` hits the
special case. It is entirely accidental, and a `$root` directory in a git
repo is not something we would like to keep.

**Suggested fix:** have `fromFolder` label package-root files `$root`, matching
the tgz reader.

---

## 2. Template `base` is read from `package.json`, and failing is silent

`installTemplate` reads the parent template from `npm.getNpm()` — that is,
`package.json`:

```java
if (npm.getNpm().has("base")) { ... installTemplate(npm.getNpm().asString("base"), ...) }
```

Putting `"base": "fhir.base.template"` in `config.json` instead — which is where
we first tried it, since everything else about the template lives there — is
not an error. It is simply ignored. Inheritance silently does not happen, and
the build then fails about four minutes later, deep in resource loading, with:

```
java.lang.NullPointerException: Cannot invoke "JsonObject.getJsonObject(String)"
    because "this.defaultConfig" is null
    at IGKnowledgeProvider.findConfiguration(IGKnowledgeProvider.java:423)
```

Nothing in that message points back at the template. Worth either honouring
`base` in `config.json` too, or warning when an unknown top-level key appears
there.

---

## 3. `fhir.base.template` makes `processPages.xslt` unavoidable

`fhir.base.template`'s `config.json` applies a transform to everything in
`input/pagecontent`:

```json
{ "folder": "input/pagecontent", "relativePath": "_includes",
  "transform": "template/scripts/processPages.xslt" }
```

That XSLT cannot process a pre-rendered page. It requires well-formed XHTML,
and it hard-terminates on headings:

```xml
<xsl:template priority="10" match="html:h1|html:h2">
  <xsl:message terminate="yes">"h1" and "h2" elements are not permitted</xsl:message>
</xsl:template>
```

Any real page has an `h1`. There is no parameter to switch the transform off,
so pass-through requires a custom template purely to restate `pre-process`
without that one line. Given the IG publisher is meant to support pre-rendered
pages, a `do-transforms: false` style switch (the string already exists in
`Template.class`) or an opt-out per folder would remove the need for a custom
template in the simple case.

Symptom before we worked this out — note that it names the temp copy, not the
input file, which makes it hard to trace back:

```
XSLT Error: The value of attribute "title" associated with an element type "span"
must not contain the '<' character.
Exception generating xslt page ...\temp\pages\_includes\ig-home.html
```

---

## 4. Every output page must have an `<html>` root, or the build dies at the end

Once pages pass through, `AIProcessor` re-parses every file in `output/` and
requires an `html` root element:

```
Publishing Content Failed: Unable to process ...\output\artifacts.html
Caused by: FHIRFormatError: Unable to Parse HTML - starts with 'null::div' not 'html'
    at AIProcessor.produceMDForPage(AIProcessor.java:294)
```

This bites specifically when a template emits page content unwrapped, because
the pages the *base template itself* generates (`toc.html`, `artifacts.html`)
are bare `<div>` fragments and now have nothing wrapping them. It fires after
the full build and jekyll run — about eight minutes in — for what is a
structural problem knowable much earlier.

Our template therefore tests the content and only wraps when needed:

```liquid
{%- capture body %}{% include {{path}}.xml %}{% endcapture -%}
{%- if body contains '<html' -%}{{ body }}{%- else -%} ...base chrome... {%- endif -%}
```

A clearer error, and ideally an earlier one, would help.

---

## 5. SUSHI silently drops `-intro`, `-notes` and `-summary` pages

SUSHI reads `input/pagecontent/<x>-intro.*` and `<x>-notes.*` as fragments to
splice into resource `<x>`'s page. A page whose slug merely *ends* in one of
those reserved suffixes is dropped from `ImplementationGuide.definition.page`
with **no warning at any log level**.

Our export contains a page called
`ig-technical_artifacts-artifacts-structuredefinition-mental-health-clinical-notes.html`.
It vanished. There is no diagnostic anywhere; we found it by diffing the
pagecontent folder against the generated page tree. On a 113-page guide that is
a page quietly missing from the published IG.

A warning when a pagecontent file is skipped for this reason would be enough.

Related, and reasonable but undocumented: SUSHI auto-registers only `.md` and
`.xml` in `input/pagecontent`, not `.html`. Our pages were `.html`, so
`definition.page` came out containing nothing but `toc.html`, and the build
"succeeded" while publishing none of the guide.

---

## 6. SUSHI's `pages:` is all-or-nothing

The obvious fix for item 5 is to declare the one dropped page in
`sushi-config.yaml`. Declaring `pages:` at all switches off auto-detection
entirely, so the page tree collapsed from 113 to 2. There is no way to say
"everything found automatically, plus this one".

We renamed the file and rewrote the inbound links instead.

---

## 7. `license` is required, but you learn that four minutes in

A missing `license` is fatal:

```
Publishing Content Failed: A license is required in the configuration file, and it
must be a SPDX license identifier ... at PublisherBase.license(PublisherBase.java:462)
```

It is checked in `PublisherIGLoader.load`, after the full package load — 4m35s
into the build for us. Configuration validation of this kind could happen during
initialisation, alongside the template load.

---

## 8. `history.html` is reserved, and the message is easy to miss

The publication process generates `history.html` itself and rejects an IG that
supplies one:

```
This IG generates a page named 'history.html'.
That file name is reserved by the publication process
```

Fair enough — but see item 9, because on Windows that message arrives wrapped in
an unrelated internal error, which makes it read like noise rather than a
publication blocker.

---

## 9. On Windows, real messages are buried in a FHIRPath parse error

Every QA message comes out wrapped like this:

```
Internal error in location for message: 'Error @1, 3: Premature ExpressionNode
termination at unexpected token ":"', loc = 'c:\...\output\ig-home.html',
err = 'Illegal HTML: illegal html element: time (2026)'
```

The publisher parses the message's *location* as a FHIRPath expression. On
Windows the location is an absolute path, so the drive-letter colon in `c:\...`
terminates the expression and every message is reported as an internal error.
The real message survives in `err =`, but the output is unreadable and the
severity is lost — a publication blocker (item 8) looks exactly like a cosmetic
HTML warning. It presumably does not happen on the CI build.

---

## 10. Pass-through pages must be valid as XML *and* as HTML

Not a publisher bug, but the sharpest trap in this whole exercise, and worth
documenting for anyone else taking this path.

`input/pagecontent` is parsed as XML, and XML serialisation collapses any empty
element to `<tag/>`. The same file is then served to browsers as `text/html`,
where the trailing slash is ignored on everything that is not a void element.
So `<script src="jquery.min.js"/>` never closes, and the browser swallows the
rest of the document as script text.

Every one of our pages came out blank. Nothing in the build complains: the
publisher is happy because the XML is well formed, and the output HTML checker
reported `0 pages invalid xhtml (0%)`.

Anything round-tripping HTML through an XML serialiser needs to force explicit
end tags on non-void elements. A warning from the output checker when a
non-void element is self-closed would catch this for everyone.

---

## 11. Smaller things

- **`<time>` and `<details>` are rejected as illegal HTML.** The allow-list in
  `XhtmlNode` is `a abbr blockquote br code div h1-h6 img li p pre span table
  ul` — no `<time>`, `<details>`, `<summary>`, `<section>` or `<figure>`. All
  are standard HTML5. We rewrite `<time>` to `<span>` on import, but `<details>`
  stays: it is how IP statements are rendered across HL7 IGs, and the publisher
  emits `<details>` itself in the `qa-ipreview.html` it generates. Its own
  checker warns about an element its own generator produces.
- **The publish box is swapped in by literal string match.** `PublisherGenerator`
  replaces the exact string
  `<!--ReleaseHeader--><p id="publish-box">Publish Box goes here</p><!--EndReleaseHeader-->`,
  while `HTMLInspector` only checks that a page contains
  `<!--ReleaseHeader--><p id="publish-box">` … `</p><!--EndReleaseHeader-->`.
  A page that carries the markers around its own text therefore passes the
  check but never receives the real publish box. Matching between the markers,
  as the inspector does, would let pre-rendered pages take part.
- **The missing-publish-box message names an arbitrary page.** It is emitted
  once for the whole IG ("this is only reported once, but applies for all
  pages") but attached to one filename, which is not necessarily a page that
  lacks it. We chased the wrong page for a while.
- **Spurious combined-package error.** `Error generating combined package:
  output\package.tgz (The system cannot find the file specified)` appears on
  every run, before the step that creates `package.tgz`. Looks like an ordering
  issue; the build then completes and the file exists.
- **Pass-through is not byte-exact.** 13 of our 113 pages come back with a BOM
  added and attribute order normalised. Harmless, but worth stating in the
  documentation so nobody builds a checksum-based workflow on top.
- **`input/` root is silently ignored.** Dropping pre-rendered pages in
  `input/*.html` produces no message at all — they are simply never read. A
  note about unrecognised files under `input/` would have saved us a build cycle.

---

## For the Simplifier side (not IG publisher issues)

Recorded here so the two sets do not get confused. These are export bugs we
currently patch in `scripts/prepare_export_for_ig_publisher.py` on the way in:

- The page footer emits `<span title="<time datetime='...'>...</time>">` — a
  whole element inside an attribute value. This makes **every** generated page
  fail XML parsing.
- `<br>`, `<link>`, `<meta>` unclosed and a bare `&nbsp;` — the export is HTML5,
  but `input/pagecontent` is parsed as XML.
- Element links pointed at `staging.simplifier.net`, and `/resolve?...` links
  were host-relative. (Staging was used because production cannot yet hold two
  versions of one package in scope.)
- Links into the raw resource files are broken twice over. The pages link to
  `artifacts/package/<file>.json`, but the export ships those files under
  `artifacts/fsh-generated/resources/` — so all 363 of them 404. That path
  moved between two exports of the same version, which is worth pinning down.
- On top of that, the links carry an element anchor:
  `artifacts/.../StructureDefinition-bh-grant-info.json#Observation.category`.
  No browser can honour an anchor inside a `.json`. We now repoint all 352 at
  the rendered artifact page, which does carry `id="Observation.category"`
  anchors. 144 resolve; the other 208 do not, because the example renderer
  emits a link for **every** node it draws — `Observation.category.coding.code`,
  `DocumentReference.author.display`, the synthetic `Observation.resourceType` —
  and the profile page only has ids for elements in the snapshot tree. Either
  the profile page needs anchors that deep, or the example renderer should link
  only to elements that have one.
- Bare links to the raw files (binding value sets, extension URLs, the codes
  in a value set's CLD) opened the JSON file. We send them to the rendered
  artifact page too, and fall back to the raw file only when there is no page.
- LOINC codes and the LOINC system link to Simplifier's page for
  `hl7.terminology`'s `CodeSystem-v3-loinc.json`, i.e. a JSON file. We rewrite
  them the way the IG publisher renders them: `http://loinc.org` for the system,
  `https://loinc.org/<code>/` for each code.
- `static/styles/*/master.html` — three Simplifier style-template *sources* ship
  inside the assets, still holding `{{variable:publisher-url}}` and
  `{{content}}/{{style-folder}}/images/...` placeholders. Nothing links to them.
  We drop them on import. Relatedly, the assets contain a duplicated path:
  `static/styles/next-level-custom-styling/styles/styles/hl7-fhir-template/`.
- Links to the FHIR core spec are relative, so they resolve against the guide:
  `extensibility.html`, `observation.html`, `datatypes.html`,
  `resource-definitions.html`, `provenance-definitions.html`,
  `questionnaireresponse.html` — 44 links that need the `hl7.org/fhir/R4/` host.
- The downloads page links 25 dependency packages as `packages/<id>@<ver>.tgz`,
  but `export-ig.ps1` strips `packages/` out of the zip to
  keep it small. Either ship them or drop the links.
- A staging export scopes resolve links and page titles to the project
  (`project:bh-ig`, earlier the test project `project:bh-ig-test`) where
  production uses the package (`package:fhir.onc.bhp@<version>`). The project
  links 404 on production, so we rescope them to the package. Those that point
  at this guide's own resources (`?canonical=` ours, `?reference=` an example)
  then go to the rendered page here, as the raw-file links do.
- Twelve `ig-_pagetemplates-*` internal pages are included in the export.
- `href=""`, `href="#"` and a bare `href="artifacts"` directory link.
- The clinical-notes profile page emits `id="DocumentReference.context"` twice —
  `The html source has duplicate anchor Ids`.
- The export ships its own `history.html`, which the publication process
  reserves (item 8). Nothing links to it relatively, so we drop it on import.
- Page titles in `definition.page` are derived by SUSHI from the filename, so
  the guide's nav and TOC read "Ig Background Uscdi Bh Elements". The export
  should carry real titles.
- `index.html` is a meta-refresh to `ig-home.html` rather than the home page
  itself, and pages carry no `<!--ReleaseHeader-->` marker, so the publisher
  cannot inject the HL7 publish box.
