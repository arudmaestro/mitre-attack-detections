# Test for T1185 - start headless Edge with a remote debugging port, then close it. Run in a lab/test VM only.
$p = Start-Process msedge.exe -ArgumentList '--headless', '--remote-debugging-port=9333', 'about:blank' -PassThru
Start-Sleep -Seconds 5
Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
