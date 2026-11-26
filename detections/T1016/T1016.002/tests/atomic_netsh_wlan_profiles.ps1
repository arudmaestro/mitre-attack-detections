# Test for T1016.002 - list saved Wi-Fi profiles. Run in a lab/test VM only.
# On a VM without a wireless service this prints an error, but the process creation is still logged.
netsh.exe wlan show profiles
