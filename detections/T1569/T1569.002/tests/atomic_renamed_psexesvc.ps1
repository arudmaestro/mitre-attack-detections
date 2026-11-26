# Test for T1569.002 - a copy of cmd.exe named PSEXESVC.exe (in Temp) runs echo. Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'PSEXESVC.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo T1569.002 test"
Remove-Item $p -Force
