# Test for T1059.005 - VBScript from a user-writable path. Run in a lab/test VM only.
$vbs = Join-Path $env:TEMP 'T1059005_test.vbs'
Set-Content -Path $vbs -Value 'WScript.Echo "T1059.005 test"'
cscript.exe //nologo $vbs
Remove-Item $vbs -Force
