# US Behavioral Health Profiles

FHIR R4 Implementation Guide of behavioral health profiles for the US realm,
built on US Core. Published by ONC. Canonical: `http://fhir.org/guides/onc/bhp`.

Profiles are authored in [FHIR Shorthand](input/fsh/); pages and styling are
authored on Simplifier.net. The HL7 IG publisher runs over both and produces
`output/`, which is what gets published on [fhir.org](https://fhir.org).

![Build and release process](build-and-release.svg)

## Prerequisites

| tool | for |
| --- | --- |
| [SUSHI](https://github.com/FHIR/sushi) (`npm i -g fsh-sushi`) | FSH → `fsh-generated/` |
| [Firely Terminal](https://simplifier.net/downloads/firely-terminal) (`fhir`) | syncing with Simplifier |
| Java 17+ | the IG publisher (`_build.bat` downloads the jar itself) |
| Python 3.9+ with `lxml` (`pip install lxml`) | the scripts in `scripts/` |
| Ruby + Jekyll | the IG publisher's page rendering |

A Simplifier account with write access to *US Behavioral Health Profiles* is
needed to edit pages or export the guide.

## What is authored and what is generated

Edit these:

- `input/fsh/` — the profiles, extensions, value sets and examples
- `guides/us-behavioral-health-profiles/` — page sources and styling, kept in
  step with Simplifier by `fhir project sync`

Never edit these — every build wipes and rewrites them:

- `fsh-generated/` — SUSHI's output
- `input/pagecontent/`, `ig-template/package/content/` — the imported export
- `output/`, `temp/`, `template/` — the IG publisher's output
- inside `guides/`: `ig/technical_artifacts/artifacts/index.page.md`, the IP
  statements block in `ig/downloads.page.md`, and the TOC block at the top of
  every `*.page.md`

Those generated blocks live inside `guides/`, which is the Simplifier source —
so they only reach the built guide by way of Simplifier. That fixes the order of
the cycle below.

## Making a change

```powershell
_simplifier_generate.bat                 # SUSHI, and regenerate the derived guide pages
fhir project sync --strategy TakeLocal   # push guides/ to Simplifier
.\_simplifier_export.ps1                 # download the export AND import it into input/
_build.bat                               # IG publisher -> output/
```

Then read `output/qa.html` and open `output/index.html`.

Each step feeds the next: `_simplifier_generate.bat` writes into `guides/`, the
sync carries that to Simplifier, the export brings the rendered result back, and
the build turns it into the guide. Skip `_simplifier_generate.bat` if you only
changed page text or styling — nothing derived from the FSH has moved.

To pull someone else's Simplifier edits down instead:
`fhir project sync --strategy TakeRemote`.

`_simplifier_export.ps1` uses your browser's Simplifier session, so be logged in
at simplifier.net first. It writes
`simplifier-export/us-behavioral-health-profiles@<version>.zip`, where
`<version>` is the one in `sushi-config.yaml`, strips the bundled `packages/`
cache, and then runs `scripts/prepare_export_for_ig_publisher.py` over it. Commit that
zip. To reimport without exporting again — after changing the import script, say
— run `python scripts/prepare_export_for_ig_publisher.py` on its own.

Manual fallback for the download: open
`https://simplifier.net/guide/us-behavioral-health-profiles/$exportaszipui`, save
the zip to that path yourself, delete its `packages/` folder and run the import
script.

## Releasing a version

1. **Set the version** in `sushi-config.yaml` *and*
   `guides/us-behavioral-health-profiles/guide.yaml` — they must match.
2. **Run the cycle above** and get `output/qa.html` clean.
3. **Release on Simplifier**: publish a package release *and* an IG version
   release for this version.
4. **Update `publication-request.json`**: `version`, `desc`, `status`,
   `sequence`, `milestone`. This is what the HL7 publication process reads to
   describe the release, and what it derives `package-list.json` and
   `history.html` from.
5. **Commit** the new export zip and `publication-request.json`, then hand
   `output/` plus `publication-request.json` to the HL7 publication process,
   which publishes under `https://fhir.org/guides/onc/bhp/`.

> `package-list.json` in the root is a leftover from the previous release
> script. Nothing regenerates it now — confirm it is current, or drop it, once
> the HL7 publication process owns it.

## How the pass-through works

For the fhir.org registry the IG publisher has to *run* over this repo and pass
the Simplifier-rendered pages through, rather than us handing over a finished
site. Two pieces make that work.

**`scripts/prepare_export_for_ig_publisher.py`** reads the export zip and writes:

| from the zip | to |
| --- | --- |
| `*.html` | `input/pagecontent/*.xml` |
| `static/` | `ig-template/package/content/static/` |
| `artifacts/` | `ig-template/package/content/artifacts/` |

The export is HTML5 and the publisher parses `input/pagecontent` as XML, so it
reparses every page and reserialises it as XHTML that is *also* valid HTML. It
repairs known export problems on the way through (staging URLs, links anchored
into raw `.json`, dependency links, filenames SUSHI or the publication process
reserve) and fails loudly rather than shipping a page it cannot fix. Each repair
is explained in [ig-publisher-quirks.md](ig-publisher-quirks.md) and should
eventually be fixed in the Simplifier exporter instead.

**`ig-template/`** is a pass-through template, selected by
`template = #ig-template` in `ig.ini`. It extends `fhir.base.template` but drops
the `processPages.xslt` pre-process and emits page content unwrapped, so a page
that is already a complete document reaches `output/` unchanged. The one page
the base template generates itself, `toc.html`, still gets the base chrome. Its
own "Artifacts Summary" page is dropped (`scripts/onGenerate.final.xslt`), since
the export already has a page for every artifact.

The guide's CSS, JavaScript and images live in the Simplifier style
`guides/us-behavioral-health-profiles/styles/custom-simplifier-hl7-fhir/` and
reach `output/static/` through the export. HL7 reviews that JavaScript once
before publication.
