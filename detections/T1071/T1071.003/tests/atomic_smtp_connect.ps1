# Test for T1071.003 - outbound TCP connection to port 587 from PowerShell. Run in a lab/test VM only.
# Usage: .\atomic_smtp_connect.ps1 -SmtpServer <test SMTP server you control>
# The connection only needs to be attempted.
param([string]$SmtpServer = 'smtp.example.com')
Test-NetConnection -ComputerName $SmtpServer -Port 587
