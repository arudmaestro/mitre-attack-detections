# Test for T1036.003 - run a renamed copy of cmd.exe. Run in a lab/test VM only.
$path = Join-Path $env:TEMP 'T1036003_update.exe'
Copy-Item "$env:WINDIR\System32\cmd.exe" $path
& $path /c echo T1036.003 test
Remove-Item $path -Force
