#!/usr/bin/env bash
# Test for T1552.001 (Linux) - search an empty temp folder for 'password' with grep -r. Read-only.
# Run in a lab/test system only.
d=$(mktemp -d)
grep -ri password "$d"
rm -rf "$d"
echo "T1552.001 test"
