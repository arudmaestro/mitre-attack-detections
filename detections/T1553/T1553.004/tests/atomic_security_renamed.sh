#!/usr/bin/env bash
# Test for T1553.004 - run a renamed copy of /usr/bin/true called security (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/security
/tmp/security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain /tmp/t1553004.crt
rm -f /tmp/security
echo "T1553.004 test"
