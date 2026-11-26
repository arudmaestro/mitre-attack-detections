# Test for T1539 (Windows) - read the Chrome/Edge cookie database path through cmd.exe (output discarded).
# Run in a lab/test VM only.
cmd.exe /c type "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Network\Cookies" 2>$null | Out-Null
