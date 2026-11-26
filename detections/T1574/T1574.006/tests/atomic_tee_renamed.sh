#!/usr/bin/env bash
# Test for T1574.006 - run a renamed copy of /usr/bin/true called tee (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/tee
/tmp/tee /etc/ld.so.preload
rm -f /tmp/tee
echo "T1574.006 test"
