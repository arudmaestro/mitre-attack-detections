#!/usr/bin/env bash
# Test for T1553.006 - run a renamed copy of /usr/bin/true called csrutil (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/csrutil
/tmp/csrutil disable
rm -f /tmp/csrutil
echo "T1553.006 test"
