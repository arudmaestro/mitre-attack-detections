#!/usr/bin/env bash
# Test for T1070.006 (Linux) - set an old timestamp on a temp file. Run in a lab/test system only.
echo "T1070.006 test" > /tmp/T1070006.txt
touch -t 200001010000 /tmp/T1070006.txt
rm -f /tmp/T1070006.txt
