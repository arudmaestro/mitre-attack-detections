# Test for T1685.001 - a copy of cmd.exe named wevtutil.exe echoes 'sl Microsoft-Windows-PowerShell/Operational /e:false'
# (no log is changed). Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'wevtutil.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo sl Microsoft-Windows-PowerShell/Operational /e:false"
Remove-Item $p -Force
