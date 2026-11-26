# Test for T1027.017 - open a local SVG file in Microsoft Edge. Run in a lab/test VM only.
# The SVG is a harmless shape with no script.
$svg = Join-Path $env:TEMP 'T1027017_test.svg'
Set-Content -Path $svg -Value '<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"><rect width="10" height="10"/></svg>'
$p = Start-Process msedge.exe -ArgumentList "`"$svg`"" -PassThru
Start-Sleep -Seconds 5
Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
Remove-Item $svg -Force
