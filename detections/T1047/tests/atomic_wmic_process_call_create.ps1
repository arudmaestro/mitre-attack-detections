# Test for T1047 - WMIC process call create. Run in a lab/test VM only.
# wmic.exe is removed on newer Windows 11 builds; use an older host or enable the feature.
wmic process call create 'cmd.exe /c echo T1047 test'
