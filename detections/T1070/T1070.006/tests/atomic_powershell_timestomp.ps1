# Test for T1070.006 (Windows) - change a temp file's creation time. Run in a lab/test VM only.
$f = Join-Path $env:TEMP 'T1070006.txt'
Set-Content -Path $f -Value 'test'
powershell.exe -NoProfile -Command "(Get-Item '$f').CreationTime = '2000-01-01'"
Remove-Item $f -Force
