#!/usr/bin/env bash
# Test for T1561.001 - run a renamed copy of /usr/bin/true called dd (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/dd
/tmp/dd if=/dev/zero of=/dev/sdz bs=512 count=1
rm -f /tmp/dd
echo "T1561.001 test"
