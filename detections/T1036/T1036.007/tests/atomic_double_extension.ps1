# Test for T1036.007 - run a copy of whoami named invoice.pdf.exe. Run in a lab/test VM only.
$path = Join-Path $env:TEMP 'T1036007_invoice.pdf.exe'
Copy-Item "$env:WINDIR\System32\whoami.exe" $path
& $path
Remove-Item $path -Force
