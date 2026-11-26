#!/usr/bin/env bash
# Test for T1564.009 (macOS) - list the (empty) resource fork of a temp file. Run in a lab/test Mac only.
f=$(mktemp)
ls -l "$f/..namedfork/rsrc" 2>/dev/null
rm -f "$f"
echo "T1564.009 test"
