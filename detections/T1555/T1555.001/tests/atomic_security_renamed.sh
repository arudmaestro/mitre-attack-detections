#!/usr/bin/env bash
# Test for T1555.001 - run a renamed copy of /usr/bin/true called security (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/security
/tmp/security dump-keychain -d login.keychain
rm -f /tmp/security
echo "T1555.001 test"
