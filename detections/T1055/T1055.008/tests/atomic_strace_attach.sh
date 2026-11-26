#!/usr/bin/env bash
# Test for T1055.008 - attach strace to a short-lived sleep process. Run in a lab/test system with strace installed.
sleep 30 &
PID=$!
timeout 3 strace -p "$PID" -o /dev/null 2>/dev/null
kill "$PID" 2>/dev/null
echo "T1055.008 test"
