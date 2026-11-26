# Test for T1216.002 - run Write-Host through SyncAppvPublishingServer.vbs. Run in a lab/test VM only.
$v = "$env:WINDIR\System32\SyncAppvPublishingServer.vbs"
if (-not (Test-Path $v)) { Write-Warning 'SyncAppvPublishingServer.vbs not found on this Windows version.'; return }
cscript.exe //nologo $v "n; Write-Host T1216.002"
