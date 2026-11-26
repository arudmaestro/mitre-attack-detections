#!/usr/bin/env bash
# Test for T1014 - attempt to load a kernel module from /tmp. Run in a lab/test system only.
# The module does not exist, so nothing is loaded; the process creation is still logged.
insmod /tmp/T1014_test_module.ko 2>/dev/null
echo "T1014 test"
