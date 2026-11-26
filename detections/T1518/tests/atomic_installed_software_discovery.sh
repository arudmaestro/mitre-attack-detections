#!/usr/bin/env bash
# Test for T1518 (macOS) - list installed applications. Run in a lab/test Mac only.
system_profiler SPApplicationsDataType >/dev/null 2>&1
echo "T1518 test"
