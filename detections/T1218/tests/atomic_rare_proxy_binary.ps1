# Test for T1218 - start Microsoft.Workflow.Compiler.exe without arguments (prints usage and exits).
# Run in a lab/test VM only.
$b = "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\Microsoft.Workflow.Compiler.exe"
if (-not (Test-Path $b)) { Write-Warning 'Microsoft.Workflow.Compiler.exe not found.'; return }
& $b 2>$null
