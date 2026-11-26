#!/usr/bin/env bash
# Test for T1059.004 - Unix Shell /dev/tcp. Run in a lab/test system only.
# Connects to localhost only; no remote host is contacted.
bash -c 'exec 3<>/dev/tcp/127.0.0.1/4444 2>/dev/null || echo "T1059.004 test"'
