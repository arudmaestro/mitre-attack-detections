# Test for T1218.011 - rundll32 runs inline JavaScript that only closes itself, then rundll32 starts without arguments.
# Run in a lab/test VM only.
Start-Process rundll32.exe -ArgumentList 'javascript:"\..\mshtml,RunHTMLApplication ";close();'
cmd.exe /c "$env:WINDIR\System32\rundll32.exe"
