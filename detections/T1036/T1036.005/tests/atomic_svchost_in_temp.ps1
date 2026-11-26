# Test for T1036.005 - run a copy of cmd.exe named svchost.exe from Temp. Run in a lab/test VM only.
$path = Join-Path $env:TEMP 'svchost.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $path
& $path /c echo T1036.005 test
Remove-Item $path -Force
