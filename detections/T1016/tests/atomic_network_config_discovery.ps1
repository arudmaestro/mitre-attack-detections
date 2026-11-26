# Test for T1016 - network configuration discovery. Run in a lab/test VM only.
ipconfig.exe /all
route.exe print
arp.exe -a
