#!/usr/bin/env bash
# Test for T1564.011 (Linux / macOS) - run a copy of /usr/bin/true from /tmp with nohup. Run in a lab/test system only.
cp "$(type -P true)" /tmp/t1564011
nohup /tmp/t1564011 >/dev/null 2>&1
rm -f /tmp/t1564011
echo "T1564.011 test"
