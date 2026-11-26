# Test for T1570 - harmless command line containing 'copy payload.exe \\127.0.0.1\ADMIN$\Temp\t1570.exe' (no file is copied). Run in a lab/test VM only.
cmd.exe /c echo copy payload.exe \\127.0.0.1\ADMIN$\Temp\t1570.exe T1570 test
