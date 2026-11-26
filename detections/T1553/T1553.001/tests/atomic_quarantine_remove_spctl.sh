#!/usr/bin/env bash
# Test for T1553.001 (macOS) - remove the (absent) quarantine attribute from a temp file, and run a copy of
# /usr/bin/true named spctl with --master-disable (Gatekeeper is not changed). Run in a lab/test Mac only.
f=$(mktemp)
xattr -d com.apple.quarantine "$f" 2>/dev/null
rm -f "$f"
cp "$(type -P true)" /tmp/spctl
/tmp/spctl --master-disable
rm -f /tmp/spctl
echo "T1553.001 test"
