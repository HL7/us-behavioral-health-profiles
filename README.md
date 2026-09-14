# US Behavioral Health Profiles

FHIR R4 Implementation Guide of behavioral health profiles for the US realm,
built on US Core. Published by ONC. Canonical: `http://fhir.org/guides/onc/bhp`.

Profiles are authored in [FHIR Shorthand](input/fsh/), built with SUSHI and
Simplifier.net. To be hosted on [fhir.org](https://fhir.org).

## Workflow

1. Edit FSH in `input/fsh/`, run SUSHI locally to build. 
2. Optionally edit IG pages on Simplifier.net
   (requires an account with write access to *US Behavioral Health Profiles*).
3. Sync with Simplifier via Firely Terminal:
   ```powershell
   fhir project sync --strategy TakeLocal   # push local, overwrite Simplifier in case of conflicts
   fhir project sync --strategy TakeRemote  # pull Simplifier, overwrite local in case of conflicts
   ```
4. Commit and push to GitHub.
5. Export the IG zip (below), commit it — this is what fhir.org hosts.

## Releasing a version for hosting on fhir.org

1. **Get everything ready.** Set the version in `sushi-config.yaml` *and*
   `guides/us-behavioral-health-profiles/guide.yaml` (the release script warns
   if they disagree), then:

   - `_generate.bat` - runs SUSHI over `input/fsh/` and the `scripts/` that
     generate content for the Simplifier IG pages (artifact index, IP
     statements, page TOCs).
   - `_build.bat` - runs the HL7 IG publisher. We use it for quality control:
     read the QA report it produces and fix what it flags. Its `output/` is
     *not* what we publish.
   - `fhir project sync --strategy TakeLocal` - push everything to Simplifier,
     then open the guide there and check that it all looks right.

2. **Release on Simplifier**: publish a package release *and* an IG version
   release for this version. That package - the Simplifier one, not
   `output/package.tgz` from the IG publisher - is the one that belongs in the
   release.

   The release script does not touch packages at all - `publish/` ships pages
   only. Wiring the Simplifier package into `publish/` can be done later.

3. **Update `publication-request.json`** (root): `version`, `desc`, `status`,
   `sequence`, `milestone`. That is the same file the HL7 publication process
   uses to describe a release; the script derives `package-list.json` (the
   standard IG history file) from it, so that one is never edited by hand.

4. **Run the release script**, logged in to simplifier.net in your browser:

   ```powershell
   .\output-simplifier-ig\release-ig.ps1 -Export
   ```

   It exports the guide, saves it as
   `output-simplifier-ig/us-behavioral-health-profiles@<version>.zip` with the
   bundled `packages/` cache stripped, and assembles
   `output-simplifier-ig/publish/`:

   ```
   publish/
     index.html          redirect to ig-home.html
     history.html        generated from package-list.json; every page's footer and
                         publish box link to it at its absolute fhir.org URL
     package-list.json
     ig-*.html + artifacts/ + static/                 <- current version, at the root
     0.1.0/  0.2.0/  ...                              <- every archived version
   ```

   Drop `-Export` to rebuild `publish/` from the zips already archived (e.g.
   after editing `publication-request.json`).

   `package-registry.json`, `package-feed.xml` and `publication-feed.xml` sit one
   level up at the webroot root (`fhir.org/guides/`) - the host maintains those.

5. **Check `publish/`** locally (open `index.html` and `history.html`), then
   hand it to the fhir.org maintainers to upload under
   `https://fhir.org/guides/onc/bhp/`.
6. **Commit** the new `us-behavioral-health-profiles@<version>.zip`,
   `publication-request.json` and the regenerated
   `package-list.json`. `publish/` is generated and gitignored - it is rebuilt from the archived zips at any time.

Manual fallback for step 4: open
`https://simplifier.net/guide/us-behavioral-health-profiles/$exportaszipui`,
save the zip as `output-simplifier-ig/us-behavioral-health-profiles@<version>.zip`,
delete its `packages/` folder, then run `release-ig.ps1` without `-Export`.

> `us-behavioral-health-profiles@current.zip` is the old unversioned export from
> before this process; the release script ignores it. Delete it once a real
> versioned export is committed.
