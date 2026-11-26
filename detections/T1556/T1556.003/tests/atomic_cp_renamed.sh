#!/usr/bin/env bash
# Test for T1556.003 - run a renamed copy of /usr/bin/true called cp (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/cp
/tmp/cp /dev/null /etc/pam.d/t1556003-test
rm -f /tmp/cp
echo "T1556.003 test"
