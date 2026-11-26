#!/usr/bin/env bash
# Test for T1564.001 (macOS) - hide a temp file with chflags, then delete it. Run in a lab/test Mac only.
f=$(mktemp)
chflags hidden "$f"
rm -f "$f"
echo "T1564.001 test"
