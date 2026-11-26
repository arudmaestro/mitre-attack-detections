# Test for T1134.003 - start a process with runas /netonly. Run in a lab/test VM only.
# runas asks for a password: type any value; with /netonly it is only used for network access and is not checked.
runas.exe /netonly /user:LAB\T1134003test "cmd.exe /c echo T1134.003 test"
