#!/usr/bin/env bash
# Test for T1674 - run a renamed copy of /usr/bin/true called xdotool (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/xdotool
/tmp/xdotool type T1674test
rm -f /tmp/xdotool
echo "T1674 test"
