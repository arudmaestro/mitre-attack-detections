# Test for T1003 - Mimikatz keywords on the command line. Run in a lab/test VM only.
# Harmless: only echoes the keywords, no credential access.
cmd.exe /c "echo privilege::debug sekurlsa::logonpasswords"
