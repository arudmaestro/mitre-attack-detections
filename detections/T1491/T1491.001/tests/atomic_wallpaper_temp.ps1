# Test for T1491.001 - point the wallpaper registry value to an image path in Temp, then restore it.
# The desktop is not refreshed, so the visible wallpaper does not change. Run in a lab/test VM only.
$k = 'HKCU:\Control Panel\Desktop'
$old = (Get-ItemProperty -Path $k -Name Wallpaper).Wallpaper
Set-ItemProperty -Path $k -Name Wallpaper -Value "$env:TEMP\T1491_001.bmp"
Start-Sleep -Seconds 1
Set-ItemProperty -Path $k -Name Wallpaper -Value $old
