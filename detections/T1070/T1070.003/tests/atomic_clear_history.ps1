# Test for T1070.003 (Windows) - clear the history of a child PowerShell session. Run in a lab/test VM only.
powershell.exe -NoProfile -Command "Clear-History"
