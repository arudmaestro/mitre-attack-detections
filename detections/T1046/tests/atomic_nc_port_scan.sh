#!/usr/bin/env bash
# Test for T1046 (Linux) - netcat port check on localhost. Run in a lab/test system only.
nc -z -w1 127.0.0.1 22 2>/dev/null
echo "T1046 test"
