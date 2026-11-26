# Test for T1137.006 - open an empty .xll file in Excel (Excel shows an error). Run in a lab/test VM with Excel.
$xll = Join-Path $env:TEMP 'T1137006.xll'
Set-Content -Path $xll -Value ''
$p = Start-Process excel.exe -ArgumentList "`"$xll`"" -PassThru
Start-Sleep -Seconds 5
Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
Remove-Item $xll -Force
