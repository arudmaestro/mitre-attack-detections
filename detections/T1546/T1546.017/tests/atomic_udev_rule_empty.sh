#!/usr/bin/env bash
# Test for T1546.017 (Linux) - copy an empty file into /etc/udev/rules.d and remove it (no RUN key). Needs root.
# Run in a lab/test system only.
cp /dev/null /etc/udev/rules.d/99-t1546017-test.rules
rm -f /etc/udev/rules.d/99-t1546017-test.rules
echo "T1546.017 test"
