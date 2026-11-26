#!/usr/bin/env bash
# Test for T1685.004 - run a renamed copy of /usr/bin/true called auditctl (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/auditctl
/tmp/auditctl -e 0
rm -f /tmp/auditctl
echo "T1685.004 test"
