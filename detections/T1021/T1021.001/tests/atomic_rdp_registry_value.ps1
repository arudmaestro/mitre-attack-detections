# Test for T1021.001 - set fDenyTSConnections to 0. Run in a lab/test VM only.
# Harmless: writes the value under a test key in HKCU, so RDP settings are NOT changed.
reg.exe add HKCU\Software\T1021001Test /v fDenyTSConnections /t REG_DWORD /d 0 /f
reg.exe delete HKCU\Software\T1021001Test /f
