#!/usr/bin/env bash
# Test for T1548.006 (macOS) - list the user TCC database file (read-only, its content is not opened).
# Run in a lab/test Mac only.
ls -l "$HOME/Library/Application Support/com.apple.TCC/TCC.db" 2>/dev/null
echo "T1548.006 test"
