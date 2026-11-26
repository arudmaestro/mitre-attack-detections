# Test for T1021.005 - connect to TCP 5900 on localhost. Run in a lab/test VM only.
# Start any listener on 5900 first (e.g. a VNC server) so the connection succeeds and is logged.
Test-NetConnection -ComputerName 127.0.0.1 -Port 5900
