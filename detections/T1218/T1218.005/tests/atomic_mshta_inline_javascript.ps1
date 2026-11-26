# Test for T1218.005 - mshta runs inline JavaScript that starts 'cmd.exe /c echo' hidden. Run in a lab/test VM only.
Start-Process mshta.exe -ArgumentList "javascript:a=new ActiveXObject('WScript.Shell');a.Run('cmd.exe /c echo T1218.005',0);close();"
