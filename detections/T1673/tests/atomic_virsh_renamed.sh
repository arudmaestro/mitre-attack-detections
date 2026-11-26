#!/usr/bin/env bash
# Test for T1673 - run a renamed copy of /usr/bin/true called virsh (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/virsh
/tmp/virsh list --all
rm -f /tmp/virsh
echo "T1673 test"
