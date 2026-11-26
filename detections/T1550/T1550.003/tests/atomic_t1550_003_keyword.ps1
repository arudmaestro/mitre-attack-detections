# Test for T1550.003 - harmless command line containing 'Rubeus.exe ptt /ticket:T1550003' (no ticket is imported). Run in a lab/test VM only.
cmd.exe /c echo Rubeus.exe ptt /ticket:T1550003 T1550.003 test
