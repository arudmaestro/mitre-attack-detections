#!/usr/bin/env bash
# Test for T1567.002 - run a renamed copy of /usr/bin/true called rclone (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/rclone
/tmp/rclone copy /tmp/t1567002 remote:bucket
rm -f /tmp/rclone
echo "T1567.002 test"
