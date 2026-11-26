# Test for T1083 (Windows) - list a folder tree with files. Run in a lab/test VM only.
tree.com $env:TEMP /f | Out-Null
