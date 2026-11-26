# Test for T1552.002 - search a non-existent HKCU test key for 'password' (read-only, the key does not exist).
# Run in a lab/test VM only.
reg.exe query HKCU\Software\T1552002_test /f password /t REG_SZ /s
