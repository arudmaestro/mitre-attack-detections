# Test for T1090.003 (Windows) - run tor.exe --version. Run in a lab/test VM with the Tor Expert Bundle.
if (-not (Get-Command tor.exe -ErrorAction SilentlyContinue)) { Write-Warning 'tor.exe not found; install the Tor Expert Bundle to run this test.'; return }
tor.exe --version
