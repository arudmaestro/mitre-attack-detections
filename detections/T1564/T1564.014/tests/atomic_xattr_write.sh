#!/usr/bin/env bash
# Test for T1564.014 (macOS) - write and remove an extended attribute on a temp file. Run in a lab/test Mac only.
f=$(mktemp)
xattr -w com.t1564014.test "dGVzdA==" "$f"
xattr -d com.t1564014.test "$f"
rm -f "$f"
echo "T1564.014 test"
