# Test for T1030 - create a split 7-Zip archive. Run in a lab/test VM with 7-Zip installed.
$sz = 'C:\Program Files\7-Zip\7z.exe'
if (-not (Test-Path $sz)) { Write-Warning '7-Zip not found; install it to run this test.'; return }
$dir = Join-Path $env:TEMP 'T1030'
New-Item -ItemType Directory -Path $dir -Force | Out-Null
Set-Content -Path "$dir\data.txt" -Value ('A' * 5000)
& $sz a -v1k "$dir\out.7z" "$dir\data.txt" | Out-Null
Remove-Item $dir -Recurse -Force
