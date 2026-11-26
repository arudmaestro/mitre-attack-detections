# Test for T1564.006 - a copy of cmd.exe named VBoxHeadless.exe echoes a startvm line (no VM is started).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'VBoxHeadless.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo --startvm T1564006"
Remove-Item $p -Force
