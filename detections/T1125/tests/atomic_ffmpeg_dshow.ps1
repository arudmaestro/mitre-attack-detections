# Test for T1125 (Windows) - list DirectShow devices with ffmpeg (no recording). Run in a lab/test VM with ffmpeg.
if (-not (Get-Command ffmpeg.exe -ErrorAction SilentlyContinue)) { Write-Warning 'ffmpeg.exe not found; install ffmpeg to run this test.'; return }
ffmpeg.exe -hide_banner -list_devices true -f dshow -i video=dummy 2>$null
