#!/usr/bin/env bash
# Test for T1003.008 - attempt to read /etc/shadow. Run in a lab/test system only.
# Without root this fails, but the process creation is still logged.
cat /etc/shadow > /dev/null 2>&1
echo "T1003.008 test"
