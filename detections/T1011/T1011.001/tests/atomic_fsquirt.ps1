# Test for T1011.001 - launch the Bluetooth File Transfer wizard. Run in a lab/test VM only.
$p = Start-Process fsquirt.exe -PassThru
Start-Sleep -Seconds 3
Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
