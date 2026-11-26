# Test for T1218.010 - regsvr32 Squiblydoo against a closed local port (nothing is downloaded),
# and imitate regsvr32 starting PowerShell. Run in a lab/test VM only.
regsvr32.exe /s /n /u /i:http://127.0.0.1:1/T1218_010.sct scrobj.dll
$p = Join-Path $env:TEMP 'regsvr32.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1218.010 test"
Remove-Item $p -Force
