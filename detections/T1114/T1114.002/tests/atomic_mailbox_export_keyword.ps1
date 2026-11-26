# Test for T1114.002 - harmless command line containing the export cmdlet name (no Exchange needed). Run in a lab/test VM.
powershell.exe -NoProfile -Command "Write-Host 'New-MailboxExportRequest T1114.002 test'"
