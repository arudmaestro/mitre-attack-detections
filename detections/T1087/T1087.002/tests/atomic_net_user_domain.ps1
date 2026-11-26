# Test for T1087.002 - list domain users. Run in a lab/test VM joined to a lab domain.
# On a non-domain machine this returns an error, but the process creation is still logged.
net.exe user /domain
