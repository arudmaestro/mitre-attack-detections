# Test for T1114.001 - copy a dummy .pst file. Run in a lab/test VM only.
$src = Join-Path $env:TEMP 'T1114001.pst'
Set-Content -Path $src -Value 'dummy'
cmd.exe /c "copy $src $env:TEMP\T1114001_copy.pst"
Remove-Item "$env:TEMP\T1114001*.pst" -Force
