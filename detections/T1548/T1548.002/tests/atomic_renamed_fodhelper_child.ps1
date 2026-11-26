# Test for T1548.002 - a copy of cmd.exe named fodhelper.exe (in Temp, no elevation) starts ipconfig.
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'fodhelper.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "ipconfig.exe"
Remove-Item $p -Force
