#!/usr/bin/env bash
# Test for T1548.004 - run a renamed copy of /usr/bin/true called osascript (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/osascript
/tmp/osascript -e 'do shell script "id" with administrator privileges'
rm -f /tmp/osascript
echo "T1548.004 test"
