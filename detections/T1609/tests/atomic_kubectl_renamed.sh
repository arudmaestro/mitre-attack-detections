#!/usr/bin/env bash
# Test for T1609 - run a renamed copy of /usr/bin/true called kubectl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/kubectl
/tmp/kubectl debug node/worker-1 -it --image=busybox
rm -f /tmp/kubectl
echo "T1609 test"
