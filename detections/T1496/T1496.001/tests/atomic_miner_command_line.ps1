# Test for T1496.001 (Windows) - harmless command line containing a mining pool URL (nothing mines). Run in a lab/test VM only.
cmd.exe /c echo stratum+tcp://127.0.0.1:3333 T1496.001 test
