#!/usr/bin/env bash
# Test for T1070.004 (Linux) - shred and remove a temp file. Run in a lab/test system only.
echo "T1070.004 test" > /tmp/T1070004.txt
shred -u /tmp/T1070004.txt
