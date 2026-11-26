#!/usr/bin/env bash
# Test for T1552.007 - run a renamed copy of /usr/bin/true called kubectl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/kubectl
/tmp/kubectl get secrets -A -o yaml
rm -f /tmp/kubectl
echo "T1552.007 test"
