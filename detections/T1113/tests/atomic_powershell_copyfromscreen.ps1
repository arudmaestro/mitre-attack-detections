# Test for T1113 (Windows) - take one screenshot with CopyFromScreen and delete it. Run in a lab/test VM only.
$out = Join-Path $env:TEMP 'T1113.png'
powershell.exe -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms, System.Drawing; `$b = [Windows.Forms.Screen]::PrimaryScreen.Bounds; `$bmp = New-Object Drawing.Bitmap `$b.Width, `$b.Height; [Drawing.Graphics]::FromImage(`$bmp).CopyFromScreen(`$b.Location, [Drawing.Point]::Empty, `$b.Size); `$bmp.Save('$out')"
Remove-Item $out -Force -ErrorAction SilentlyContinue
