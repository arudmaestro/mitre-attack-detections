# Test for T1518 (Windows) - list installed software from the Uninstall key. Run in a lab/test VM only.
reg.exe query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall /s | Out-Null
