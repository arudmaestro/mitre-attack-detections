# Test for T1567.003 (Windows) - HEAD request to pastebin.com with curl.exe (nothing is uploaded). Run in a lab/test VM only.
curl.exe -s -I -m 5 -o NUL https://pastebin.com/
