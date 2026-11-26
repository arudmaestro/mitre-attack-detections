#!/usr/bin/env bash
# Test for T1548.003 - run a renamed copy of /usr/bin/true called sudo (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/sudo
/tmp/sudo -u#-1 id
rm -f /tmp/sudo
echo "T1548.003 test"
