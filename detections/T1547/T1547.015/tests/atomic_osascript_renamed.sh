#!/usr/bin/env bash
# Test for T1547.015 - run a renamed copy of /usr/bin/true called osascript (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/osascript
/tmp/osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Calculator.app", hidden:false}'
rm -f /tmp/osascript
echo "T1547.015 test"
