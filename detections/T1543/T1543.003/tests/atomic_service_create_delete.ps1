# Test for T1543.003 - create a service whose command is 'cmd.exe /c echo', then delete it (it is never started).
# Run in an elevated PowerShell in a lab/test VM only.
sc.exe create T1543003test binPath= "cmd.exe /c echo T1543.003" start= demand
Start-Sleep -Seconds 1
sc.exe delete T1543003test
