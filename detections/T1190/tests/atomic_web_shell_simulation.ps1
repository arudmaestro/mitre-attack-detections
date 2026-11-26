# Test for T1190 (Windows) - needs a lab IIS server.
# Deploy a test page that runs 'cmd.exe /c whoami' (e.g. the Atomic Red Team T1505.003 web shell),
# request it once, then remove it. This script only checks that IIS is installed.
if (-not (Get-Service W3SVC -ErrorAction SilentlyContinue)) { Write-Warning 'IIS (W3SVC) is not installed on this host.'; return }
Write-Host 'IIS found. Deploy and request a lab web shell (see Atomic Red Team T1505.003), then remove it.'
