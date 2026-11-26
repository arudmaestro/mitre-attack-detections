#!/usr/bin/env bash
# Test for T1557.001 - run a renamed copy of /usr/bin/true called responder (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/responder
/tmp/responder -I eth0
rm -f /tmp/responder
echo "T1557.001 test"
