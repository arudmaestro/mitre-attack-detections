# Test for T1046 (Windows) - scan one port on localhost with Nmap. Run in a lab/test VM with Nmap installed.
if (-not (Get-Command nmap.exe -ErrorAction SilentlyContinue)) { Write-Warning 'Nmap not found; install it to run this test.'; return }
nmap.exe -p 80 127.0.0.1
