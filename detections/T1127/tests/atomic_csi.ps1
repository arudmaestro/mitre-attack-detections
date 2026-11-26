# Test for T1127 - run C# interactive (csi.exe) with a one-line script. Run in a lab/test VM with Visual Studio or Build Tools.
$csi = Get-ChildItem "${env:ProgramFiles}\Microsoft Visual Studio", "${env:ProgramFiles(x86)}\Microsoft Visual Studio" -Recurse -Filter csi.exe -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $csi) { Write-Warning 'csi.exe not found; install Visual Studio or Build Tools to run this test.'; return }
$script = Join-Path $env:TEMP 'T1127.csx'
Set-Content -Path $script -Value 'System.Console.WriteLine("T1127 test");'
& $csi.FullName $script
Remove-Item $script -Force
