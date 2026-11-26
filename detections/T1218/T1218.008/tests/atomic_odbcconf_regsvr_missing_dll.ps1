# Test for T1218.008 - odbcconf REGSVR with a missing DLL (nothing loads). Run in a lab/test VM only.
cmd.exe /c "odbcconf.exe /s /a {REGSVR $env:TEMP\T1218_008_missing.dll}"
