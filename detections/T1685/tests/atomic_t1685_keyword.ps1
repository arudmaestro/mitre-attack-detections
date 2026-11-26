# Test for T1685 - harmless command line containing 'Add-MpPreference -ExclusionPath C:\T1685test' (no exclusion is added). Run in a lab/test VM only.
cmd.exe /c echo Add-MpPreference -ExclusionPath C:\T1685test T1685 test
