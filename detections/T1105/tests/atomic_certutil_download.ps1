# Test for T1105 (Windows) - download a web page with certutil. Run in a lab/test VM only (one HTTPS request).
$out = Join-Path $env:TEMP 'T1105.html'
certutil.exe -urlcache -split -f https://example.com/ $out
Remove-Item $out -Force -ErrorAction SilentlyContinue
