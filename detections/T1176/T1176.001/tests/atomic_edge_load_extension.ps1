# Test for T1176.001 - start Edge with --load-extension pointing to an empty folder, then close it. Run in a lab/test VM only.
$ext = Join-Path $env:TEMP 'T1176001_ext'
New-Item -ItemType Directory -Path $ext -Force | Out-Null
$p = Start-Process msedge.exe -ArgumentList "--load-extension=`"$ext`"" -PassThru
Start-Sleep -Seconds 5
Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
Remove-Item $ext -Recurse -Force
