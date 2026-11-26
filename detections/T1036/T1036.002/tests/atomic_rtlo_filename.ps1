# Test for T1036.002 - run a copy of whoami named with a right-to-left override. Run in a lab/test VM only.
$name = 'T1036002' + [char]0x202E + 'fdp.exe'
$path = Join-Path $env:TEMP $name
Copy-Item "$env:WINDIR\System32\whoami.exe" $path
Start-Process -FilePath $path -Wait -NoNewWindow
Remove-Item -LiteralPath $path -Force
