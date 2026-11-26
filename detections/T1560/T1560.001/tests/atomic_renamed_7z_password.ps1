# Test for T1560.001 (Windows) - a copy of cmd.exe named 7z.exe echoes '7z a -p... archive' (no archive is made).
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP '7z.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "echo a -pT1560test archive.7z"
Remove-Item $p -Force
