# Test for T1567.004 (Windows) - HEAD request to webhook.site with curl.exe (nothing is posted). Run in a lab/test VM only.
curl.exe -s -I -m 5 -o NUL https://webhook.site/
