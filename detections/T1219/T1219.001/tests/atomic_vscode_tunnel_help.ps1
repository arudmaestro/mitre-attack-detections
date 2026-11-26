# Test for T1219.001 (Windows) - show VS Code tunnel help (no tunnel is opened). Needs VS Code. Run in a lab/test VM only.
if (-not (Get-Command code -ErrorAction SilentlyContinue)) { Write-Warning 'VS Code (code) not installed.'; return }
code tunnel --help
