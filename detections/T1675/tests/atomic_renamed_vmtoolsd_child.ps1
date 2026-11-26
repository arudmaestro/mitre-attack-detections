# Test for T1675 - a copy of cmd.exe named vmtoolsd.exe (in Temp) starts cmd.exe /c echo. Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'vmtoolsd.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "cmd.exe /c echo T1675 test"
Remove-Item $p -Force
