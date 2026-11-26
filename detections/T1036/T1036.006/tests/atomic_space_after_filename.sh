#!/usr/bin/env bash
# Test for T1036.006 - run a copy of /usr/bin/true whose name ends with a space (nothing is run or changed).
# Run in a lab/test system only. (A copy of true is used because macOS kills copies of /bin programs.)
cp "$(type -P true)" "/tmp/T1036006_report.txt "
# The trailing space in the program name is the point of this test.
# shellcheck disable=SC2288
"/tmp/T1036006_report.txt " "T1036.006 test"
rm -f "/tmp/T1036006_report.txt "
echo "T1036.006 test"
