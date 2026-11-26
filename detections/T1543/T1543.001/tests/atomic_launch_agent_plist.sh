#!/usr/bin/env bash
# Test for T1543.001 (macOS) - copy an empty plist into ~/Library/LaunchAgents and remove it (it is never loaded).
# Run in a lab/test Mac only.
mkdir -p "$HOME/Library/LaunchAgents"
cp /dev/null "$HOME/Library/LaunchAgents/com.t1543001.test.plist"
rm -f "$HOME/Library/LaunchAgents/com.t1543001.test.plist"
echo "T1543.001 test"
