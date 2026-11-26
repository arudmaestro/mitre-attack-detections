#!/usr/bin/env bash
# Test for T1564.013 - run a renamed copy of /usr/bin/true called mount (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/mount
/tmp/mount --bind /tmp/t1564013 /proc/1
rm -f /tmp/mount
echo "T1564.013 test"
