#!/usr/bin/env bash
# Test for T1561.002 - run a renamed copy of /usr/bin/true called wipefs (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/wipefs
/tmp/wipefs -a /dev/sdz
rm -f /tmp/wipefs
echo "T1561.002 test"
