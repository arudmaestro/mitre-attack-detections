# Test for T1021.002 - map the local C$ admin share. Run in a lab/test VM as Administrator only.
net.exe use \\127.0.0.1\C$
net.exe use \\127.0.0.1\C$ /delete /y
