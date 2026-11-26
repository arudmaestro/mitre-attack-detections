#!/usr/bin/env bash
# Test for T1082 (Linux) - system information discovery. Run in a lab/test system only.
uname -a
cat /etc/os-release > /dev/null
