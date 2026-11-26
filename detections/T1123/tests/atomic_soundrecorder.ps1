# Test for T1123 (Windows) - record 3 seconds with the legacy Sound Recorder (only on older Windows versions).
# Run in a lab/test VM only.
if (-not (Test-Path "$env:WINDIR\System32\SoundRecorder.exe")) { Write-Warning 'SoundRecorder.exe not present on this Windows version.'; return }
$out = Join-Path $env:TEMP 'T1123.wma'
SoundRecorder.exe /FILE $out /DURATION 0000:00:03
Remove-Item $out -Force -ErrorAction SilentlyContinue
