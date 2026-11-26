#!/usr/bin/env bash
# Test for T1548.003 - run a renamed copy of /usr/bin/true called tee (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/tee
/tmp/tee /etc/sudoers.d/t1548003-test
rm -f /tmp/tee
echo "T1548.003 test"
