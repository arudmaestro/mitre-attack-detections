# Test for T1110.003 - failed logons for 12 different accounts from one source.
# Run from a lab machine against ANOTHER lab host (logons from 127.0.0.1 are excluded by the rule).
param([string]$Target = 'REPLACE_WITH_LAB_HOST')
1..12 | ForEach-Object { net.exe use "\\$Target\IPC$" /user:"spraytest$_" WrongPassword123 2>$null | Out-Null }
