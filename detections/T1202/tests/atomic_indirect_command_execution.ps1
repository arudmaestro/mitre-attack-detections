# Test for T1202 - run harmless commands through pcalua, forfiles and a headless conhost. Run in a lab/test VM only.
pcalua.exe -a "$env:WINDIR\System32\whoami.exe"
forfiles.exe /p "$env:WINDIR\System32" /m notepad.exe /c "whoami.exe"
conhost.exe --headless cmd.exe /c echo T1202
