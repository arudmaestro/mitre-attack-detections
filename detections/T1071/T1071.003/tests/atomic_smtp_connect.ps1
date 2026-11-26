# Test for T1071.003 - outbound TCP connection to port 587 from PowerShell. Run in a lab/test VM only.
# Replace the host with a test SMTP server you control; the connection only needs to be attempted.
Test-NetConnection -ComputerName smtp.example.com -Port 587
