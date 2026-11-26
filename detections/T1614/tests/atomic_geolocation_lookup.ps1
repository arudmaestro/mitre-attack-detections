# Test for T1614 (Windows) - query ipapi.co with curl.exe (the answer is discarded). Run in a lab/test VM only.
curl.exe -s -m 5 -o NUL https://ipapi.co/json/
