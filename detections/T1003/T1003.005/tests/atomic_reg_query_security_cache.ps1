# Test for T1003.005 - Query the cached credentials registry key. Run in a lab/test VM only.
# Access is denied unless run as SYSTEM, but the process creation event is still logged.
reg.exe query HKLM\SECURITY\Cache
