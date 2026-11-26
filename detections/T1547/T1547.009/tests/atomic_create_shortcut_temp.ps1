# Test for T1547.009 - create a shortcut to notepad in Temp with CreateShortcut, then delete it. Run in a lab/test VM only.
Start-Process powershell.exe -Wait -ArgumentList '-NoProfile -Command $s=(New-Object -ComObject WScript.Shell).CreateShortcut($env:TEMP+''\T1547009.lnk''); $s.TargetPath=''C:\Windows\System32\notepad.exe''; $s.Save()'
Remove-Item "$env:TEMP\T1547009.lnk" -Force -ErrorAction SilentlyContinue
