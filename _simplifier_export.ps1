# Downloads the Simplifier IG export into simplifier-export/ as
# us-behavioral-health-profiles@<version>.zip, with the bundled packages/ cache
# stripped, and then converts it into IG publisher input under input/pagecontent/
# and ig-template/. Run _build.bat next.
#
# Run _simplifier_generate.bat and sync to Simplifier BEFORE this: the artifact
# index, the IP statements and the page TOCs are generated into guides/, and only
# reach the guide by way of Simplifier.
#
#
# Uses your browser's existing Simplifier login (the export endpoint is cookie-authed),
# so make sure you're logged in at simplifier.net first.
# ponytail: reuses the browser session instead of scripting login/antiforgery/2FA.

param([string]$Version)

$ErrorActionPreference = 'Stop'
$repo = $PSScriptRoot  # the script lives at the repo root

if (-not $Version) {
    $Version = (Select-String -Path (Join-Path $repo 'sushi-config.yaml') -Pattern '^version:\s*(\S+)').Matches[0].Groups[1].Value
}
if (-not $Version) { Write-Error "No version found in sushi-config.yaml"; exit 1 }

$url  = 'https://simplifier.net/guide/us-behavioral-health-profiles/$exportaszipui'
$dest = Join-Path $repo 'simplifier-export'
if (-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest | Out-Null }
$dl   = Join-Path $env:USERPROFILE 'Downloads'

$since = Get-Date
Write-Host "Exporting version $Version - opening export URL in your browser..."
Start-Process $url

# Wait for a new zip to finish landing in Downloads (ignores partial .crdownload/.part files).
Write-Host "Waiting for the download to appear in $dl ..."
$zip = $null
for ($i = 0; $i -lt 120 -and -not $zip; $i++) {
    Start-Sleep -Seconds 1
    if (Get-ChildItem $dl -Filter *.crdownload -ErrorAction SilentlyContinue) { continue }
    $zip = Get-ChildItem $dl -Filter *.zip -ErrorAction SilentlyContinue |
           Where-Object { $_.LastWriteTime -gt $since } |
           Sort-Object LastWriteTime -Descending | Select-Object -First 1
}
if (-not $zip) { Write-Error "No new zip in Downloads after 2 min. Did the download start / are you logged in?"; exit 1 }

$target = Join-Path $dest "us-behavioral-health-profiles@$Version.zip"
Move-Item $zip.FullName $target -Force
Write-Host "Moved: $($zip.Name) -> $target"

# Strip the bundled FHIR package cache (many MB, not needed in the hosted export).
Add-Type -AssemblyName System.IO.Compression.FileSystem
$archive = [System.IO.Compression.ZipFile]::Open($target, 'Update')
$removed = 0
foreach ($entry in @($archive.Entries)) {
    if ($entry.FullName -match '(^|/)packages/') { $entry.Delete(); $removed++ }
}
$archive.Dispose()
Write-Host "Removed $removed packages/ entries from the zip."

Write-Host ""
Write-Host "=== Importing into input/ ===" -ForegroundColor Cyan
python (Join-Path $repo 'scripts/prepare_export_for_ig_publisher.py')
if ($LASTEXITCODE -ne 0) {
    Write-Error "The import failed. The zip is saved, so fix the problem and rerun just the import: python scripts/prepare_export_for_ig_publisher.py"
    exit 1
}

Write-Host ""
Write-Host "Run _build.bat next." -ForegroundColor Green
