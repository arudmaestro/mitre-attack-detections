# Test for T1690 - start a PowerShell that turns off history saving for its own session only, then exits.
# Run in a lab/test VM only.
Start-Process powershell.exe -Wait -ArgumentList '-NoProfile -Command Set-PSReadLineOption -HistorySaveStyle SaveNothing'
