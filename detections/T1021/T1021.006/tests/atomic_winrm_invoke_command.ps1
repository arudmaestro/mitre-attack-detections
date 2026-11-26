# Test for T1021.006 - run a command through PowerShell remoting on the local host.
# Run in a lab/test VM as Administrator only; enables WinRM if it is not already on.
Enable-PSRemoting -Force -SkipNetworkProfileCheck
Invoke-Command -ComputerName localhost -ScriptBlock { cmd.exe /c echo T1021.006 test }
