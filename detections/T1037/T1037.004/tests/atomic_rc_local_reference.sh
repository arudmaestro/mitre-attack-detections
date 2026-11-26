#!/usr/bin/env bash
# Test for T1037.004 - harmless read of /etc/rc.local. Run in a lab/test system only.
ls -l /etc/rc.local 2>/dev/null
echo "T1037.004 test"
