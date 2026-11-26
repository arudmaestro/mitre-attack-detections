# CI check for the PowerShell emulation scripts in detections/**/tests/*.ps1:
#   1. every script parses (no syntax errors);
#   2. PSScriptAnalyzer reports no Error-severity findings.
# Usage: pwsh -File .github/ci/check_powershell.ps1 [-Root <repo root>]
param([string]$Root = (Get-Location).Path)
$ErrorActionPreference = 'Stop'

$scripts = Get-ChildItem -Path (Join-Path $Root 'detections') -Recurse -Filter '*.ps1' |
    Where-Object { $_.Directory.Name -eq 'tests' }
$problems = 0

foreach ($s in $scripts) {
    $tokens = $null; $errors = $null
    [System.Management.Automation.Language.Parser]::ParseFile($s.FullName, [ref]$tokens, [ref]$errors) | Out-Null
    foreach ($e in $errors) {
        $problems++
        Write-Output ("{0}:{1}: parse error: {2}" -f $s.FullName.Substring($Root.Length + 1), $e.Extent.StartLineNumber, $e.Message)
    }
}

$findings = $scripts | ForEach-Object { Invoke-ScriptAnalyzer -Path $_.FullName -Severity Error }
foreach ($f in $findings) {
    $problems++
    Write-Output ("{0}:{1}: {2}: {3}" -f $f.ScriptPath.Substring($Root.Length + 1), $f.Line, $f.RuleName, $f.Message)
}

Write-Output ("PowerShell scripts: {0}  problems: {1}" -f $scripts.Count, $problems)
if ($problems -gt 0) { exit 1 }
