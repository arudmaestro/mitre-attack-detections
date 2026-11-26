# Test for T1614.001 - harmless command line containing 'Get-WinSystemLocale' (the locale is not read). Run in a lab/test VM only.
cmd.exe /c echo Get-WinSystemLocale T1614.001 test
