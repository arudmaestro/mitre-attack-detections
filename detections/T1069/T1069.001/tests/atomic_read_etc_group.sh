#!/usr/bin/env bash
# Test for T1069.001 (Linux) - list local groups. Run in a lab/test system only.
cat /etc/group > /dev/null
echo "T1069.001 test"
