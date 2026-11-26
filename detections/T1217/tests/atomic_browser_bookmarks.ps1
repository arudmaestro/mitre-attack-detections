# Test for T1217 (Windows) - read the Chrome/Edge bookmarks file through cmd.exe. Run in a lab/test VM only.
cmd.exe /c type "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Bookmarks" 2>$null | Out-Null
