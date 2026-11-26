# Test for T1204.002 - imitate a macro starting PowerShell, and run a script from Downloads.
# Run in a lab/test VM only.
$p = Join-Path $env:TEMP 'WINWORD.EXE'
Copy-Item "$env:WINDIR\System32\cmd.exe" $p -Force
& $p /c "powershell.exe -NoProfile -Command Write-Host T1204.002 test"
Remove-Item $p -Force
$js = Join-Path "$env:USERPROFILE\Downloads" 'T1204_002_test.js'
Set-Content -Path $js -Value 'WScript.Echo("T1204.002 test");'
cscript.exe //nologo $js
Remove-Item $js -Force
