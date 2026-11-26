#!/usr/bin/env bash
# Test for T1547.006 - run a renamed copy of /usr/bin/true called kextload (nothing is loaded or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/kextload
/tmp/kextload /tmp/t1547006.kext
rm -f /tmp/kextload
echo "T1547.006 test"
