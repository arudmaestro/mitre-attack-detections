# Test for T1571 - PowerShell listens on 127.0.0.1:4444 and connects to it (loopback only, nothing is sent).
# Run in a lab/test VM only.
$l = [System.Net.Sockets.TcpListener]::new([System.Net.IPAddress]::Loopback, 4444)
$l.Start()
$c = [System.Net.Sockets.TcpClient]::new()
$c.Connect('127.0.0.1', 4444)
Start-Sleep -Seconds 1
$c.Close(); $l.Stop()
