#!/usr/bin/env bash
# Test for T1602.001 - run a renamed copy of /usr/bin/true called snmpwalk (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/snmpwalk
/tmp/snmpwalk -v2c -c public 192.0.2.1 1.3.6.1.2.1.1
rm -f /tmp/snmpwalk
echo "T1602.001 test"
