# Test for T1010 - list open window titles. Run in a lab/test VM only.
powershell.exe -NoProfile -Command "Get-Process | Where-Object { `$_.MainWindowTitle } | Select-Object Name, MainWindowTitle"
