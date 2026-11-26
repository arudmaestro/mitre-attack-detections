#!/usr/bin/env bash
# Test for T1647 - run a renamed copy of /usr/bin/true called PlistBuddy (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/PlistBuddy
/tmp/PlistBuddy -c "Set :LSUIElement true" /tmp/t1647/Info.plist
rm -f /tmp/PlistBuddy
echo "T1647 test"
