# Test for T1137.004 - write the WebView key path under a harmless test key. Run in a lab/test VM only.
reg.exe add "HKCU\Software\T1137004Test\Outlook\WebView\Inbox" /v URL /t REG_SZ /d "http://example.invalid/" /f
reg.exe delete "HKCU\Software\T1137004Test" /f
