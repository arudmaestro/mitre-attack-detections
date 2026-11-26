# Test for T1069.002 - list Domain Admins. Run in a lab/test VM joined to a lab domain.
# On a non-domain machine this returns an error, but the process creation is still logged.
net.exe group "domain admins" /domain
