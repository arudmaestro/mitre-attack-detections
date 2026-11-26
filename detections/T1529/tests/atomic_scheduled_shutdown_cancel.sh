#!/usr/bin/env bash
# Test for T1529 (Linux) - schedule a reboot in 10 minutes and cancel it immediately. Needs root.
# Run in a lab/test system only. If cancelling fails, run: shutdown -c
shutdown -r +10 "T1529 test - will be cancelled"
sleep 2
shutdown -c
echo "T1529 test"
