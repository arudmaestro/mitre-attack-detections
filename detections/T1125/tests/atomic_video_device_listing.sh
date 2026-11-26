#!/usr/bin/env bash
# Test for T1125 (Linux) - list video devices (nothing is recorded). Run in a lab/test system only.
ls -l /dev/video* 2>/dev/null
echo "T1125 test"
