#!/usr/bin/env bash
# Test for T1055.009 - dd targeting this shell's /proc/<pid>/mem with count=0 (nothing is written).
# Run in a lab/test system only.
dd if=/dev/zero of=/proc/$$/mem bs=1 count=0 2>/dev/null
echo "T1055.009 test"
