#!/usr/bin/env bash
# Test for T1613 - run a renamed copy of /usr/bin/true called kubectl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/kubectl
/tmp/kubectl auth can-i --list
rm -f /tmp/kubectl
echo "T1613 test"
