# Test for T1070.007 - create and delete a fake RDP history entry. Run in a lab/test VM only.
reg.exe add "HKCU\Software\Microsoft\Terminal Server Client\Servers\T1070007test" /v UsernameHint /t REG_SZ /d test /f
reg.exe delete "HKCU\Software\Microsoft\Terminal Server Client\Servers\T1070007test" /f
