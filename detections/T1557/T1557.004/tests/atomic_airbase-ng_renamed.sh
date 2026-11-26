#!/usr/bin/env bash
# Test for T1557.004 - run a renamed copy of /usr/bin/true called airbase-ng (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/airbase-ng
/tmp/airbase-ng -e LabTestSSID wlan0mon
rm -f /tmp/airbase-ng
echo "T1557.004 test"
