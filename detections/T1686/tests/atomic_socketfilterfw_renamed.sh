#!/usr/bin/env bash
# Test for T1686 - run a renamed copy of /usr/bin/true called socketfilterfw (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/socketfilterfw
/tmp/socketfilterfw --setglobalstate off
rm -f /tmp/socketfilterfw
echo "T1686 test"
