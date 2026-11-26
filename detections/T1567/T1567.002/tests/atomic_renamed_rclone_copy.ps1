# Test for T1567.002 (Windows) - a copy of cmd.exe named rclone.exe echoes a copy command (nothing is uploaded).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'rclone.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo copy C:\T1567002 remote:bucket"
Remove-Item $p -Force
