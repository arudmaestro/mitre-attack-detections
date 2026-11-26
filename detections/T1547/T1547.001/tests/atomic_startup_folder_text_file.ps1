# Test for T1547.001 - copy a text file into the user's Startup folder and remove it (a .txt is not executed at logon).
# Run in a lab/test VM only.
$s = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
cmd.exe /c copy /y NUL "$s\T1547001.txt"
Remove-Item "$s\T1547001.txt" -Force
