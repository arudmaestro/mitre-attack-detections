# Test for T1552.003 (Windows) - read the PSReadLine history file through cmd.exe (output discarded).
# Run in a lab/test VM only.
cmd.exe /c type "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" 2>$null | Out-Null
