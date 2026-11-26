#!/usr/bin/env bash
# Test for T1564.014 - run a renamed copy of /usr/bin/true called setfattr (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/setfattr
/tmp/setfattr -n user.t1564014 -v dGVzdA== /tmp/t1564014
rm -f /tmp/setfattr
echo "T1564.014 test"
