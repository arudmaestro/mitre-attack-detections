# Test for T1558.001 - harmless command line containing 'kerberos::golden /krbtgt:00000000000000000000000000000000' (no ticket is forged). Run in a lab/test VM only.
cmd.exe /c echo kerberos::golden /krbtgt:00000000000000000000000000000000 T1558.001 test
