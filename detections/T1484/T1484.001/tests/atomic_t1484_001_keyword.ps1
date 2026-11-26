# Test for T1484.001 - harmless command line containing 'Set-GPRegistryValue' (no Group Policy is changed). Run in a lab/test VM only.
cmd.exe /c echo Set-GPRegistryValue T1484.001 test
