# Test for T1559.001 - harmless command line containing 'GetTypeFromCLSID 9BA05972-F6A8-11CF-A442-00A0C90A8F39' (no COM object is created). Run in a lab/test VM only.
cmd.exe /c echo GetTypeFromCLSID 9BA05972-F6A8-11CF-A442-00A0C90A8F39 T1559.001 test
