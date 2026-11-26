# Test for T1127.003 - run jam.exe -v. Run in a lab/test VM with JamPlus installed.
if (-not (Get-Command jam.exe -ErrorAction SilentlyContinue)) { Write-Warning 'jam.exe not found; install JamPlus to run this test.'; return }
jam.exe -v
