# Test for T1136 - create and delete a local user. Run in a lab/test VM as Administrator.
# A random password is generated and never stored.
$name = 'T1136test'
$pw = [guid]::NewGuid().ToString() + 'Aa1!'
net.exe user $name $pw /add
net.exe user $name /delete
