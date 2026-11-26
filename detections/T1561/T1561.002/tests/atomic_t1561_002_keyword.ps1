# Test for T1561.002 - harmless command line containing '\\.\PhysicalDrive9' (no disk is opened). Run in a lab/test VM only.
cmd.exe /c echo \\.\PhysicalDrive9 T1561.002 test
