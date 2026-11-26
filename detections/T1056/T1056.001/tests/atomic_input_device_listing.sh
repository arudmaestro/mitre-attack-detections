#!/usr/bin/env bash
# Test for T1056.001 (Linux) - list keyboard input devices (nothing is read). Run in a lab/test system only.
ls -l /dev/input/event* 2>/dev/null
echo "T1056.001 test"
