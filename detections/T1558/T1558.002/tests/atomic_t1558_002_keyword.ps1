# Test for T1558.002 - harmless command line containing 'kerberos::golden /service:cifs /target:host.lab.local' (no ticket is forged). Run in a lab/test VM only.
cmd.exe /c echo kerberos::golden /service:cifs /target:host.lab.local T1558.002 test
