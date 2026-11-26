# Test for T1027.004 - cscript.exe launching csc.exe. Run in a lab/test VM only.
$js = Join-Path $env:TEMP 'T1027004.js'
$csc = "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
Set-Content -Path $js -Value ('var s = new ActiveXObject("WScript.Shell"); s.Run("\"' + $csc.Replace('\','\\') + '\" /?", 0, true);')
cscript.exe //nologo $js
Remove-Item $js -Force
