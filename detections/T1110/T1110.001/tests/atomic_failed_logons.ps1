# Test for T1110.001 - generate 12 failed logons for a non-existent account against the local host.
# Run in a lab/test VM only. The password is a deliberately wrong test value.
1..12 | ForEach-Object { net.exe use \\127.0.0.1\IPC$ /user:T1110001test WrongPassword123 2>$null | Out-Null }
