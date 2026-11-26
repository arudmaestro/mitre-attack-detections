#!/usr/bin/env bash
# Test for T1686 - run a renamed copy of /usr/bin/true called ufw (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/ufw
/tmp/ufw disable
rm -f /tmp/ufw
echo "T1686 test"
