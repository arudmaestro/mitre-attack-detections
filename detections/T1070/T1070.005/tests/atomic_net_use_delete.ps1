# Test for T1070.005 - connect to and remove the local IPC$ share. Run in a lab/test VM as Administrator.
net.exe use \\127.0.0.1\IPC$
net.exe use \\127.0.0.1\IPC$ /delete /y
