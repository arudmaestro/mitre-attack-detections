# Test for T1112 - write a security-relevant value name under a harmless test key. Run in a lab/test VM only.
# Defender and UAC settings are NOT changed.
reg.exe add HKCU\Software\T1112Test /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg.exe delete HKCU\Software\T1112Test /f
