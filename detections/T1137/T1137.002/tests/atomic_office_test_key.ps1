# Test for T1137.002 - write the Office test key path under a harmless test key. Run in a lab/test VM only.
# Office is NOT affected: the real key is HKCU\Software\Microsoft\Office test\Special\Perf.
reg.exe add "HKCU\Software\T1137002Test\Office test\Special\Perf" /t REG_SZ /d "C:\T1137002_not_a_dll.dll" /f
reg.exe delete "HKCU\Software\T1137002Test" /f
