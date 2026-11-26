#!/usr/bin/env bash
# Test for T1610 - run a renamed copy of /usr/bin/true called docker (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/docker
/tmp/docker run --rm --privileged -v /:/host alpine true
rm -f /tmp/docker
echo "T1610 test"
