# Test for T1078.001 - enable the Guest account briefly, then restore its original state.
# Run in a lab/test VM as Administrator only.
$was = (Get-LocalUser -Name Guest).Enabled
net.exe user guest /active:yes
if (-not $was) { net.exe user guest /active:no }
