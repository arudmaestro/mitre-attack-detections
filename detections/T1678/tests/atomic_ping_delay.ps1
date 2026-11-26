# Test for T1678 - wait about 2 seconds with ping to 127.0.0.1. Run in a lab/test VM only.
ping.exe -n 3 127.0.0.1 | Out-Null
