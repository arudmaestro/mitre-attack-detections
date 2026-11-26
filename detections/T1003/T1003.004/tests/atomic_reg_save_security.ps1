# Test for T1003.004 - Save the SECURITY hive. Run in a lab/test VM as Administrator only.
$out = Join-Path $env:TEMP 'T1003004-security.save'
reg.exe save HKLM\SECURITY $out /y
Remove-Item $out -Force -ErrorAction SilentlyContinue
