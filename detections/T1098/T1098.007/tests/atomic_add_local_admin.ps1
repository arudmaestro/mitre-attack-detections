# Test for T1098.007 (Windows) - add a temporary user to Administrators and remove it.
# Run in a lab/test VM as Administrator only. A random password is generated and never stored.
$name = 'T1098007'
$pw = [guid]::NewGuid().ToString() + 'Aa1!'
net.exe user $name $pw /add
net.exe localgroup administrators $name /add
net.exe localgroup administrators $name /delete
net.exe user $name /delete
