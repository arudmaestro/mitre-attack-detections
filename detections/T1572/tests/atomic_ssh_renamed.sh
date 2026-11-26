#!/usr/bin/env bash
# Test for T1572 - run a renamed copy of /usr/bin/true called ssh (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/ssh
/tmp/ssh -N -R 8080:127.0.0.1:80 user@192.0.2.10
rm -f /tmp/ssh
echo "T1572 test"
