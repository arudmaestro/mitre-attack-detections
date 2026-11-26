#!/usr/bin/env bash
# Test for T1569.001 - run a renamed copy of /usr/bin/true called launchctl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/launchctl
/tmp/launchctl submit -l com.t1569001.test -- /usr/bin/true
rm -f /tmp/launchctl
echo "T1569.001 test"
