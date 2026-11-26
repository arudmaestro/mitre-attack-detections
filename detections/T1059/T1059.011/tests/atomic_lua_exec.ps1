# Test for T1059.011 - run a one-line Lua script. Run in a lab/test VM with Lua installed.
if (-not (Get-Command lua.exe -ErrorAction SilentlyContinue)) { Write-Warning 'lua.exe not found; install Lua to run this test.'; return }
lua.exe -e "print('T1059.011 test')"
