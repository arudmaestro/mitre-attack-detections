# Test for T1127.001 - build a harmless project file from %TEMP% with MSBuild. Run in a lab/test VM only.
$msbuild = "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe"
$proj = Join-Path $env:TEMP 'T1127001.proj'
Set-Content -Path $proj -Value '<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003"><Target Name="T"><Message Text="T1127.001 test" /></Target></Project>'
& $msbuild $proj /nologo
Remove-Item $proj -Force
