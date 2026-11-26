#!/usr/bin/env bash
# Test for T1037.005 - harmless listing of the StartupItems folder. Run in a lab/test Mac only.
ls /Library/StartupItems 2>/dev/null
echo "T1037.005 test"
