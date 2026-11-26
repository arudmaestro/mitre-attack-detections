# Test for T1003.002 - Save the SAM hive. Run in a lab/test VM as Administrator only.
$out = Join-Path $env:TEMP 'T1003002-sam.save'
reg.exe save HKLM\SAM $out /y
Remove-Item $out -Force -ErrorAction SilentlyContinue
