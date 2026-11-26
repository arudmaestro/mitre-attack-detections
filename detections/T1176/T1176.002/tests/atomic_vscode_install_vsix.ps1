# Test for T1176.002 - ask VS Code to install a .vsix that does not exist. Run in a lab/test VM with VS Code.
if (-not (Get-Command code -ErrorAction SilentlyContinue)) { Write-Warning 'VS Code (code) not found; install it to run this test.'; return }
code --install-extension "$env:TEMP\T1176002_does_not_exist.vsix"
