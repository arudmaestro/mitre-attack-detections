#!/usr/bin/env bash
# Test for T1611 - run a renamed copy of /usr/bin/true called nsenter (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/nsenter
/tmp/nsenter -t 1 -m -u -i -n -p /bin/sh
rm -f /tmp/nsenter
echo "T1611 test"
