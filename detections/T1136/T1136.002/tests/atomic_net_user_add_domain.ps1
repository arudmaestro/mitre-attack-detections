# Test for T1136.002 - create and delete a domain user. Run on a lab domain-joined host as a domain admin.
$name = 'T1136002'
$pw = [guid]::NewGuid().ToString() + 'Aa1!'
net.exe user $name $pw /add /domain
net.exe user $name /delete /domain
