# Test for T1505.004 - harmless command line containing 'New-WebGlobalModule' (no IIS module is installed). Run in a lab/test VM only.
cmd.exe /c echo New-WebGlobalModule T1505.004 test
