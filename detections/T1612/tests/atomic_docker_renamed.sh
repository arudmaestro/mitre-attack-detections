#!/usr/bin/env bash
# Test for T1612 - run a renamed copy of /usr/bin/true called docker (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/docker
/tmp/docker build -t t1612-test .
rm -f /tmp/docker
echo "T1612 test"
