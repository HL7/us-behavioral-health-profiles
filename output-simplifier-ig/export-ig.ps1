# Exports the Simplifier IG zip into output-simplifier-ig/.
# Uses your browser's existing Simplifier login (the export endpoint is cookie-authed),
# so make sure you're logged in at simplifier.net first.
# ponytail: reuses the browser session instead of scripting login/antiforgery/2FA.

$url  = 'https://simplifier.net/guide/us-behavioral-health-profiles/$exportaszipui'
$dest = $PSScriptRoot  # script lives in output-simplifier-ig/
$dl   = Join-Path $env:USERPROFILE 'Downloads'
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$since = Get-Date
Write-Host "Opening export URL in your browser..."
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

$target = Join-Path $dest $zip.Name
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
