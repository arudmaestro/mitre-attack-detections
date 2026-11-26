# Test for T1053.005 - Scheduled task creation. Run in a lab/test VM as Administrator only.
schtasks.exe /create /tn "T1053005Test" /tr "cmd.exe /c echo T1053.005 test" /sc onlogon /ru SYSTEM /f
# Cleanup
schtasks.exe /delete /tn "T1053005Test" /f
