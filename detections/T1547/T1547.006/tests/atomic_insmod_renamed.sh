#!/usr/bin/env bash
# Test for T1547.006 - run a renamed copy of /usr/bin/true called insmod (nothing is loaded or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/insmod
/tmp/insmod /tmp/t1547006.ko
rm -f /tmp/insmod
echo "T1547.006 test"
