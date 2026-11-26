# Test for T1007 - service discovery. Run in a lab/test VM only.
# Note: use sc.exe, because 'sc' is an alias for Set-Content in PowerShell.
sc.exe query
tasklist.exe /svc
net.exe start
