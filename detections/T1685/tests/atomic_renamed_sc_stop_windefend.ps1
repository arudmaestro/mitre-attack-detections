# Test for T1685 (Windows) - a copy of cmd.exe named sc.exe echoes 'stop WinDefend' (no service is stopped).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'sc.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo stop WinDefend"
Remove-Item $p -Force
