# Test for T1135 (Windows) - list shares on the local host. Run in a lab/test VM only.
net.exe view \\127.0.0.1
net.exe share
