# Test for T1564.001 (Windows) - mark a temp file hidden+system with attrib, then delete it. Run in a lab/test VM only.
$f = Join-Path $env:TEMP 'T1564001.txt'
Set-Content -Path $f -Value 'T1564.001 test'
attrib.exe +h +s $f
attrib.exe -h -s $f
Remove-Item $f -Force
