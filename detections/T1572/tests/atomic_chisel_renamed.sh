#!/usr/bin/env bash
# Test for T1572 - run a renamed copy of /usr/bin/true called chisel (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/chisel
/tmp/chisel client 192.0.2.10:8080 R:socks
rm -f /tmp/chisel
echo "T1572 test"
