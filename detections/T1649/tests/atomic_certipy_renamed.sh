#!/usr/bin/env bash
# Test for T1649 - run a renamed copy of /usr/bin/true called certipy (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/certipy
/tmp/certipy find -u user@lab.local -dc-ip 192.0.2.10
rm -f /tmp/certipy
echo "T1649 test"
