# Test for T1574.001 - a copy of cmd.exe named winsat.exe runs echo from Temp (no DLL is loaded). Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'winsat.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo T1574.001 test"
Remove-Item $p -Force
