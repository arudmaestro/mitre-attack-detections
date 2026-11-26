# Test for T1653 - a copy of cmd.exe named powercfg.exe echoes '/change standby-timeout-ac 0' (settings unchanged).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'powercfg.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo /change standby-timeout-ac 0"
Remove-Item $p -Force
