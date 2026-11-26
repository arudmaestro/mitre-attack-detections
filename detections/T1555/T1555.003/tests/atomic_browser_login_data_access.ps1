# Test for T1555.003 (Windows) - read the Chrome 'Login Data' path through cmd.exe (output discarded).
# Run in a lab/test VM only.
cmd.exe /c type "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data" 2>$null | Out-Null
