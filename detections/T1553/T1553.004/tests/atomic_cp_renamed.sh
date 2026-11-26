#!/usr/bin/env bash
# Test for T1553.004 - run a renamed copy of /usr/bin/true called cp (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/cp
/tmp/cp /dev/null /usr/local/share/ca-certificates/t1553004.crt
rm -f /tmp/cp
echo "T1553.004 test"
