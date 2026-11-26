#!/usr/bin/env bash
# Test for T1518.001 (Linux / macOS) - search the process list for an EDR agent. Run in a lab/test system only.
pgrep -f falcon >/dev/null
echo "T1518.001 test"
