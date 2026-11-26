# Test for T1027.003 - append an archive to an image with copy /b. Run in a lab/test VM only.
$dir = Join-Path $env:TEMP 'T1027003'
New-Item -ItemType Directory -Path $dir -Force | Out-Null
Set-Content -Path "$dir\pic.jpg" -Value 'fake image'
Set-Content -Path "$dir\data.zip" -Value 'fake archive'
cmd.exe /c "copy /b $dir\pic.jpg + $dir\data.zip $dir\out.jpg"
Remove-Item $dir -Recurse -Force
