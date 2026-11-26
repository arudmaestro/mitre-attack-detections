#!/usr/bin/env bash
# Test for T1685.006 (Linux / macOS) - rm -f a file under /var/log that does not exist (nothing is deleted).
# Run in a lab/test system only.
rm -f /var/log/t1685006-does-not-exist.log
echo "T1685.006 test"
