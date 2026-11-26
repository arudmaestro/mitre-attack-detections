# Test for T1040 (Windows) - start and stop a short netsh packet capture. Run in a lab/test VM as Administrator.
$etl = Join-Path $env:TEMP 'T1040.etl'
netsh.exe trace start capture=yes tracefile=$etl maxsize=10
Start-Sleep -Seconds 3
netsh.exe trace stop
Remove-Item "$env:TEMP\T1040*" -Force -ErrorAction SilentlyContinue
