#!/usr/bin/env bash
# Test for T1557.002 - run a renamed copy of /usr/bin/true called arpspoof (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/arpspoof
/tmp/arpspoof -i eth0 192.0.2.1
rm -f /tmp/arpspoof
echo "T1557.002 test"
