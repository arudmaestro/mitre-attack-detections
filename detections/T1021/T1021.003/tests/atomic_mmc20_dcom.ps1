# Test for T1021.003 - execute a command through MMC20.Application DCOM on the local host.
# Run in a lab/test VM as Administrator only (Atomic Red Team method).
$com = [activator]::CreateInstance([type]::GetTypeFromProgID('MMC20.Application', '127.0.0.1'))
$com.Document.ActiveView.ExecuteShellCommand('cmd.exe', $null, '/c echo T1021.003 test', '7')
