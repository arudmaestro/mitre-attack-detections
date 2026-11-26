#!/usr/bin/env bash
# Test for T1557.003 - run a renamed copy of /usr/bin/true called mitm6 (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/mitm6
/tmp/mitm6 -d lab.local
rm -f /tmp/mitm6
echo "T1557.003 test"
