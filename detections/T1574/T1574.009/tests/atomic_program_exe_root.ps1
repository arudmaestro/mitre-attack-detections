# Test for T1574.009 - copy cmd.exe to C:\Program.exe, run echo with it, then delete it.
# Needs an elevated PowerShell. Run in a lab/test VM only: while the file exists, a service with an unquoted
# path that starts at that moment would run it (it is only cmd.exe and exits).
Copy-Item "$env:WINDIR\System32\cmd.exe" 'C:\Program.exe' -Force
& 'C:\Program.exe' /c "echo T1574.009 test"
Remove-Item 'C:\Program.exe' -Force
