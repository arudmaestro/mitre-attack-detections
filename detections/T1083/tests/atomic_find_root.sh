#!/usr/bin/env bash
# Test for T1083 (Linux) - shallow search from / (depth 1). Run in a lab/test system only.
find / -maxdepth 1 -name "*.conf" 2>/dev/null
echo "T1083 test"
