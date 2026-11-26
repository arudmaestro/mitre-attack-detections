# Test for T1059.007 - JScript from a user-writable path. Run in a lab/test VM only.
$js = Join-Path $env:TEMP 'T1059007_test.js'
Set-Content -Path $js -Value 'WScript.Echo("T1059.007 test");'
cscript.exe //nologo $js
Remove-Item $js -Force
