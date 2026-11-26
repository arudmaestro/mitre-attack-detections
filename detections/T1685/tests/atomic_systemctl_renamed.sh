#!/usr/bin/env bash
# Test for T1685 - run a renamed copy of /usr/bin/true called systemctl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/systemctl
/tmp/systemctl stop falcon-sensor
rm -f /tmp/systemctl
echo "T1685 test"
