# Test for T1649 - harmless command line containing 'Certify.exe find /vulnerable' (no certificate is requested). Run in a lab/test VM only.
cmd.exe /c echo Certify.exe find /vulnerable T1649 test
