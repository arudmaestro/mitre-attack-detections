#!/usr/bin/env bash
# Test for T1564.002 - run a renamed copy of /usr/bin/true called dscl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/dscl
/tmp/dscl . -create /Users/t1564002 IsHidden 1
rm -f /tmp/dscl
echo "T1564.002 test"
