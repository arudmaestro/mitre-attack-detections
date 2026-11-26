# Test for T1136.001 (Windows) - create and delete a local user. Run in a lab/test VM as Administrator.
$name = 'T1136001'
$pw = [guid]::NewGuid().ToString() + 'Aa1!'
net.exe user $name $pw /add
net.exe user $name /delete
