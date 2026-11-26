# Test for T1140 (Windows) - encode and decode a temp file with certutil. Run in a lab/test VM only.
$src = Join-Path $env:TEMP 'T1140.txt'
Set-Content -Path $src -Value 'T1140 test'
certutil.exe -f -encode $src "$src.b64" | Out-Null
certutil.exe -f -decode "$src.b64" "$src.out" | Out-Null
Remove-Item "$env:TEMP\T1140*" -Force
