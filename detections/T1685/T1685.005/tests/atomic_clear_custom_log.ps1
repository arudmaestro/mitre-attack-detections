# Test for T1685.005 - create a custom event log, clear it with wevtutil cl, then remove it.
# The Security log is not touched (see the README for 1102). Needs an elevated PowerShell. Run in a lab/test VM only.
New-EventLog -LogName T1685005 -Source T1685005Src
Write-EventLog -LogName T1685005 -Source T1685005Src -EventId 1 -Message 'T1685.005 test'
wevtutil.exe cl T1685005
Remove-EventLog -LogName T1685005
