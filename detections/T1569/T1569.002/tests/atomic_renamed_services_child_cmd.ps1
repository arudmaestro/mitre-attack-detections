# Test for T1569.002 - a copy of cmd.exe named services.exe (in Temp) starts cmd.exe /c echo.
# Run in a lab/test VM only. The T1036.005 rule (system process name outside system folders) also fires.
$p = Join-Path $env:TEMP 'services.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "cmd.exe /c echo T1569.002 test"
Remove-Item $p -Force
