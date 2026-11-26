# Test for T1219.002 (Windows) - run a renamed copy of cmd.exe called AnyDesk.exe (no RMM software is installed).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'AnyDesk.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c echo T1219.002 test
Remove-Item $p -Force
