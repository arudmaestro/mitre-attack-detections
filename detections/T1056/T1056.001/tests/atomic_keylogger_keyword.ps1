# Test for T1056.001 (Windows) - harmless command line containing a keylogging API name. Run in a lab/test VM only.
# No keys are captured; this only checks that the rule sees the keyword.
powershell.exe -NoProfile -Command "Write-Host 'GetAsyncKeyState T1056.001 test'"
