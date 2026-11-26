# Test for T1561.001 (Windows) - a copy of cmd.exe named cipher.exe echoes '/w:C:\T1561' (nothing is wiped).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'cipher.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo /w:C:\T1561"
Remove-Item $p -Force
