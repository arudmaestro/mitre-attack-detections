# Test for T1018 - remote system discovery. Run in a lab/test VM only.
# On a non-domain machine these return errors, but the process creation is still logged.
net.exe view
nltest.exe /dclist:
