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

## Exporting the IG zip

Log in to simplifier.net in your browser first (the export endpoint is
cookie-authenticated), then run:

```powershell
.\output-simplifier-ig\export-ig.ps1
```

This downloads the zip into `output-simplifier-ig/` and strips the bundled
`packages/` folder (large, not needed for hosting).

Manual fallback: open `https://simplifier.net/guide/us-behavioral-health-profiles/$exportaszipui`,
move the zip into `output-simplifier-ig/`, and delete its `packages/` folder.

Then `git add` + commit + push the updated zip.
