# Test for T1110.002 (Windows) - run hashcat --version. Run in a lab/test VM with hashcat installed.
if (-not (Get-Command hashcat.exe -ErrorAction SilentlyContinue)) { Write-Warning 'hashcat.exe not found; install hashcat to run this test.'; return }
hashcat.exe --version
