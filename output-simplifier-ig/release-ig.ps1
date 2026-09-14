<#
Builds the folder that gets uploaded to the fhir.org host, from the Simplifier
exports archived in this directory.

    .\output-simplifier-ig\release-ig.ps1            # current version from sushi-config.yaml
    .\output-simplifier-ig\release-ig.ps1 -Export    # export from Simplifier first

We publish with the Simplifier tool stack, not the IG Publisher, but we mirror the
folder layout the IG Publisher's publication process produces, so the result drops
straight into the fhir.org webroot:

    publish/
      index.html          -> redirects to ig-home.html
      history.html        <- generated from package-list.json
      package-list.json   <- generated from publication-request.json
      ig-*.html, artifacts/, static/   <- the CURRENT version, at the root
      0.1.0/ 0.2.0/ ...   <- every archived version, each self-contained

package-registry.json, package-feed.xml and publication-feed.xml belong one level up
at the webroot root (fhir.org/guides/) - the host owns those, not us.

What IS committed: us-behavioral-health-profiles@<version>.zip per release, plus the
regenerated package-list.json. publish/ is rebuilt from those. The FHIR package is
released separately on Simplifier and is not part of publish/.
# ponytail: no package.tgz here - add it back when the Simplifier package is wired in.
# ponytail: no incremental publish - wiping and re-extracting a few hundred files is instant.
#>

param([switch]$Export, [string]$Version)

$ErrorActionPreference = 'Stop'
$here    = $PSScriptRoot
$repo    = Split-Path $here -Parent
$publish = Join-Path $here 'publish'

function Get-Yaml([string]$file, [string]$key) {
    (Select-String -Path (Join-Path $repo $file) -Pattern "^${key}:\s*(\S+)").Matches[0].Groups[1].Value
}

# --- version, canonical, package id ------------------------------------------
if (-not $Version) { $Version = Get-Yaml 'sushi-config.yaml' 'version' }
$pkgId       = Get-Yaml 'sushi-config.yaml' 'id'
$canonical   = (Get-Yaml 'sushi-config.yaml' 'canonical').TrimEnd('/')
$fhirVersion = Get-Yaml 'sushi-config.yaml' 'fhirVersion'

$guideVersion = Get-Yaml 'guides/us-behavioral-health-profiles/guide.yaml' 'version'
if ($guideVersion -ne $Version) {
    Write-Warning "Version mismatch: sushi-config.yaml = $Version, guide.yaml = $guideVersion. Fix before releasing."
}
Write-Host "=== Releasing $pkgId $Version ===" -ForegroundColor Cyan

# --- 1. the Simplifier export ------------------------------------------------
$zip = Join-Path $here "us-behavioral-health-profiles@$Version.zip"
if ($Export -or -not (Test-Path $zip)) {
    & (Join-Path $here 'export-ig.ps1') -Version $Version
}
if (-not (Test-Path $zip)) { Write-Error "Missing $zip. Run with -Export, or drop the export there by hand."; exit 1 }

# --- 2. package-list.json from publication-request.json ----------------------
# The same pair the HL7 publication process uses: publication-request.json describes
# THIS release, package-list.json accumulates the history. Only the first is edited
# by hand; this regenerates the second so the two can never drift.
$prFile   = Join-Path $repo 'publication-request.json'
$listFile = Join-Path $repo 'package-list.json'
$pr       = Get-Content $prFile -Raw | ConvertFrom-Json

if ($pr.'package-id' -ne $pkgId) { Write-Warning "publication-request.json package-id '$($pr.'package-id')' != sushi-config id '$pkgId'" }
if ($pr.version -ne $Version)    { Write-Warning "publication-request.json is at version '$($pr.version)', releasing $Version" }
# The canonical is an identifier (http://), the path is where it is served (https://) -
# only the part after the scheme has to line up.
$webPath = $pr.path.Trim().TrimEnd('/')
if (($webPath -replace '^https?://') -ne ($canonical -replace '^https?://')) {
    Write-Warning "publication-request.json path '$webPath' does not match canonical '$canonical'."
}

$entries = if (Test-Path $listFile) { @((Get-Content $listFile -Raw | ConvertFrom-Json).list) }
           else { Write-Host "Creating package-list.json"; @() }
$ci = $entries | Where-Object { $_.status -eq 'ci-build' } | Select-Object -First 1
if (-not $ci) {
    $ci = [pscustomobject][ordered]@{
        version = 'current'
        desc    = 'Continuous Integration Build (latest in version control) - Content subject to frequent changes'
        path    = $pr.'ci-build'.Trim()
        status  = 'ci-build'
        current = $true
    }
}

$entry = $entries | Where-Object { $_.version -eq $Version } | Select-Object -First 1
if (-not $entry) {
    $entry = [pscustomobject][ordered]@{ version = $Version; date = (Get-Date -Format 'yyyy-MM-dd') }
    Write-Host "Adding $Version to package-list.json"
}
$entry | Add-Member -NotePropertyName 'desc'        -NotePropertyValue $pr.desc          -Force
$entry | Add-Member -NotePropertyName 'path'        -NotePropertyValue "$webPath/$Version" -Force
$entry | Add-Member -NotePropertyName 'status'      -NotePropertyValue $pr.status        -Force
$entry | Add-Member -NotePropertyName 'sequence'    -NotePropertyValue $pr.sequence      -Force
$entry | Add-Member -NotePropertyName 'fhirversion' -NotePropertyValue $fhirVersion      -Force

# Only the newest milestone carries current=true.
$others = @($entries | Where-Object { $_.status -ne 'ci-build' -and $_.version -ne $Version })
if ($pr.milestone) {
    foreach ($e in $others) { $e.PSObject.Properties.Remove('current') }
    $entry | Add-Member -NotePropertyName 'current' -NotePropertyValue $true -Force
}

# Header mirrors the publication request; ci-build entry first, then newest release.
$list = [pscustomobject][ordered]@{
    'package-id'   = $pkgId
    'title'        = $pr.title
    'canonical'    = $canonical
    'introduction' = $pr.introduction
    'category'     = $pr.category
    'list'         = @($ci) + @($entry) + $others
}
[IO.File]::WriteAllText($listFile, ($list | ConvertTo-Json -Depth 6))   # WriteAllText = UTF-8, no BOM

# --- 3. assemble publish/ ----------------------------------------------------
if (Test-Path $publish) { Remove-Item $publish -Recurse -Force }
New-Item -ItemType Directory -Force -Path $publish | Out-Null

$redirect = @'
<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8">
<meta http-equiv="refresh" content="0; url=ig-home.html">
<link rel="canonical" href="ig-home.html">
<title>US Behavioral Health Profiles</title></head>
<body><p><a href="ig-home.html">US Behavioral Health Profiles Implementation Guide</a></p></body></html>
'@

$versions = @()
foreach ($archive in Get-ChildItem $here -Filter 'us-behavioral-health-profiles@*.zip' | Sort-Object Name) {
    if ($archive.BaseName -notmatch '@(.+)$') { continue }
    $v   = $Matches[1]
    if ($v -eq 'current') { continue }   # ponytail: unversioned leftovers are not releases
    $dir = Join-Path $publish $v
    Expand-Archive -Path $archive.FullName -DestinationPath $dir -Force
    Remove-Item (Join-Path $dir 'packages') -Recurse -Force -ErrorAction SilentlyContinue
    [IO.File]::WriteAllText((Join-Path $dir 'index.html'), $redirect)
    $versions += $v
    Write-Host "  + $v"
}
if ($versions -notcontains $Version) { Write-Error "Version $Version did not end up in publish/."; exit 1 }

# Current version also lives at the canonical root.
Copy-Item (Join-Path $publish "$Version\*") $publish -Recurse -Force
Write-Host "Root = $Version"

# --- 4. history.html ---------------------------------------------------------
Copy-Item $listFile $publish
foreach ($e in $list.list) {
    if ($e.status -ne 'ci-build' -and $versions -notcontains $e.version) {
        Write-Warning "package-list.json lists $($e.version) but there is no us-behavioral-health-profiles@$($e.version).zip"
    }
}
foreach ($v in $versions) {
    if ($list.list.version -notcontains $v) { Write-Warning "$v is published but missing from package-list.json" }
}

# Links are the absolute hosted paths from package-list.json, so the one file is
# correct at the site root and inside every version folder alike.
$rows = foreach ($e in $list.list) {
    $href = if ($e.status -eq 'ci-build') { $e.path } else { "$($e.path)/index.html" }
    $tag  = if ($e.version -eq $Version) { ' <span class="label label-success">current</span>' } else { '' }
    "<tr><td><a href=""$href"">$($e.version)</a>$tag</td><td>$($e.date)</td><td>$($e.status)</td><td>$($e.desc)</td></tr>"
}

$history = @"
<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Version History - $($list.title)</title>
<link href="static/styles/dependencies/bootstrap@3.4.1/bootstrap-fhir.css" rel="stylesheet">
<link href="static/styles/next-level-custom-styling/style.css" rel="stylesheet">
<link rel="shortcut icon" href="static/styles/next-level-custom-styling/images/favicon.png">
<style>body{padding:2em;max-width:60em;margin:0 auto}td,th{padding:.4em .8em}</style>
</head><body>
<h1>$($list.title)</h1>
<p>$($list.introduction)</p>
<p>Package <code>$($list.'package-id')</code> &middot; canonical <code>$($list.canonical)</code></p>
<h2>Version history</h2>
<table class="table table-striped">
<thead><tr><th>Version</th><th>Date</th><th>Status</th><th>Description</th></tr></thead>
<tbody>
$($rows -join "`n")
</tbody></table>
<p><a href="$webPath/index.html">Back to the current version</a> &middot; <a href="$webPath/package-list.json">package-list.json</a></p>
</body></html>
"@
# One copy at the IG root - every page's footer and publish box link to it absolutely.
[IO.File]::WriteAllText((Join-Path $publish 'history.html'), $history)

Write-Host ""
Write-Host "Ready to upload: $publish" -ForegroundColor Green
Write-Host "  versions: $($versions -join ', ')  (root = $Version)"
