# Test for T1059.010 - run an AutoHotkey script that exits immediately. Run in a lab/test VM with AutoHotkey installed.
$ahk = Get-Command AutoHotkey64.exe, AutoHotkey.exe -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $ahk) { Write-Warning 'AutoHotkey not found; install it to run this test.'; return }
$script = Join-Path $env:TEMP 'T1059010.ahk'
Set-Content -Path $script -Value 'ExitApp'
& $ahk.Source $script
Remove-Item $script -Force
