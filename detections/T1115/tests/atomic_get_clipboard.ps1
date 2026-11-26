# Test for T1115 (Windows) - read the clipboard. Run in a lab/test VM only.
powershell.exe -NoProfile -Command "Get-Clipboard | Out-Null"
