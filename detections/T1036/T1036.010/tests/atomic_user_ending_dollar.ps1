# Test for T1036.010 - create and delete a local user named like a computer account.
# Run in a lab/test VM as Administrator only. A random password is generated and never stored.
$name = 'T1036010$'
$pw = [guid]::NewGuid().ToString() + 'Aa1!'
net.exe user $name $pw /add
net.exe user $name /delete
