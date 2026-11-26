#!/usr/bin/env bash
# Test for T1546.006 - run a renamed copy of /usr/bin/true called insert_dylib (nothing is loaded or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/insert_dylib
/tmp/insert_dylib --help
rm -f /tmp/insert_dylib
echo "T1546.006 test"
