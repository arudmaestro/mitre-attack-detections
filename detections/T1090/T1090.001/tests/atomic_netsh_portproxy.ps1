# Test for T1090.001 - add and remove a local port forward. Run in a lab/test VM as Administrator.
netsh.exe interface portproxy add v4tov4 listenport=48888 listenaddress=127.0.0.1 connectport=80 connectaddress=127.0.0.1
netsh.exe interface portproxy delete v4tov4 listenport=48888 listenaddress=127.0.0.1
