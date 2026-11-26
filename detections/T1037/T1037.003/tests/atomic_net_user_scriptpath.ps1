# Test for T1037.003 - set a logon script path on a temporary local user. Run in a lab/test VM as Administrator.
$name = 'T1037003'
$pw = [guid]::NewGuid().ToString() + 'Aa1!'
net.exe user $name $pw /add
net.exe user $name /scriptpath:T1037003.bat
net.exe user $name /delete
