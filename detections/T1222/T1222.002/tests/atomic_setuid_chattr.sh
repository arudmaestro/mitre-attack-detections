#!/usr/bin/env bash
# Test for T1222.002 (Linux / macOS) - set the setuid bit on an empty temp file, try chattr -i, then clean up.
# Run in a lab/test system only.
f=/tmp/T1222_002_test
touch "$f"
chmod u+s "$f"
command -v chattr >/dev/null 2>&1 && chattr -i "$f" 2>/dev/null
rm -f "$f"
echo "T1222.002 test"
