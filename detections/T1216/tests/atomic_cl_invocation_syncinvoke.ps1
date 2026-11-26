# Test for T1216 - run a harmless command through CL_Invocation.ps1 SyncInvoke. Run in a lab/test VM only.
$s = "$env:WINDIR\diagnostics\system\AERO\CL_Invocation.ps1"
if (-not (Test-Path $s)) { Write-Warning 'CL_Invocation.ps1 not found on this Windows version.'; return }
powershell.exe -NoProfile -Command ". '$s'; SyncInvoke whoami.exe"
