#!/usr/bin/env bash
# Test for T1548.001 (Linux / macOS) - search /tmp (depth 1) for setuid files. Read-only. Run in a lab/test system only.
find /tmp -maxdepth 1 -type f -perm -4000 2>/dev/null
echo "T1548.001 test"
