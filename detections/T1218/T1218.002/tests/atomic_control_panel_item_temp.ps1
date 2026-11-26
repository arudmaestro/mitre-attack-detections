# Test for T1218.002 - open a copy of the Date and Time Control Panel item from Temp, then close it.
# Run in a lab/test VM only.
$cpl = Join-Path $env:TEMP 'T1218_002.cpl'
Copy-Item "$env:WINDIR\System32\timedate.cpl" $cpl -Force
control.exe $cpl
Start-Sleep -Seconds 3
Get-CimInstance Win32_Process -Filter "Name='rundll32.exe'" | Where-Object { $_.CommandLine -like '*T1218_002*' } | ForEach-Object { Stop-Process -Id $_.ProcessId -Force }
Remove-Item $cpl -Force -ErrorAction SilentlyContinue
