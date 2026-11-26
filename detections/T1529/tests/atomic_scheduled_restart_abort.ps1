# Test for T1529 (Windows) - schedule a forced restart in 10 minutes and cancel it immediately.
# Run in a lab/test VM only. If the abort fails, run: shutdown.exe /a
shutdown.exe /r /f /t 600 /c "T1529 test - will be aborted"
Start-Sleep -Seconds 2
shutdown.exe /a
