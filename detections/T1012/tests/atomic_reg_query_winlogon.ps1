# Test for T1012 - query a sensitive registry key. Run in a lab/test VM only.
reg.exe query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
