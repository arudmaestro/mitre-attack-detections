#!/usr/bin/env bash
# Test for T1003.007 - read the current shell's memory map. Run in a lab/test system only.
grep -c "rw-p" /proc/$$/maps
echo "T1003.007 test"
