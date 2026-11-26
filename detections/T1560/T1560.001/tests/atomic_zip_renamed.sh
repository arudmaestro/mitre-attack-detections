#!/usr/bin/env bash
# Test for T1560.001 - run a renamed copy of /usr/bin/true called zip (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/zip
/tmp/zip -e -P T1560test /tmp/t1560001.zip /etc/hostname
rm -f /tmp/zip
echo "T1560.001 test"
