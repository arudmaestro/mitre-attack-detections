#!/usr/bin/env bash
# Test for T1543.004 (macOS) - copy an empty plist into /Library/LaunchDaemons and remove it (never loaded). Needs root.
# Run in a lab/test Mac only.
cp /dev/null /Library/LaunchDaemons/com.t1543004.test.plist
rm -f /Library/LaunchDaemons/com.t1543004.test.plist
echo "T1543.004 test"
