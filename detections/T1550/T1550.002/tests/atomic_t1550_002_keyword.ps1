# Test for T1550.002 - harmless command line containing 'sekurlsa::pth' (no hash is used and no logon is made). Run in a lab/test VM only.
cmd.exe /c echo sekurlsa::pth T1550.002 test
