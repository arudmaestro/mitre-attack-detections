# Test for T1037.001 - set and remove UserInitMprLogonScript for the current user. Run in a lab/test VM only.
reg.exe add HKCU\Environment /v UserInitMprLogonScript /t REG_SZ /d "cmd.exe /c echo T1037.001" /f
reg.exe delete HKCU\Environment /v UserInitMprLogonScript /f
