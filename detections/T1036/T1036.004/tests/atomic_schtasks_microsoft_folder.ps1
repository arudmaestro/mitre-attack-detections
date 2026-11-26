# Test for T1036.004 - create and delete a task in \Microsoft\Windows\. Run in a lab/test VM as Administrator.
schtasks.exe /create /tn "\Microsoft\Windows\T1036004Test" /tr "cmd.exe /c echo T1036.004 test" /sc once /st 23:59 /f
schtasks.exe /delete /tn "\Microsoft\Windows\T1036004Test" /f
