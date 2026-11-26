# Test for T1680 - harmless command line containing 'Get-Volume' (no volume is listed). Run in a lab/test VM only.
cmd.exe /c echo Get-Volume T1680 test
