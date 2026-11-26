#!/usr/bin/env bash
# Test for T1569.003 - run a renamed copy of /usr/bin/true called systemd-run (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/systemd-run
/tmp/systemd-run --user --unit=t1569003 /tmp/t1569003
rm -f /tmp/systemd-run
echo "T1569.003 test"
