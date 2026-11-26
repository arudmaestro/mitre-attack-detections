#!/usr/bin/env bash
# Test for T1485 (Linux) - shred a temp file. Run in a lab/test system only.
f=/tmp/T1485_test.txt
echo "T1485 test" > "$f"
shred -u "$f"
echo "T1485 test"
