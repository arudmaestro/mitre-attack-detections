#!/usr/bin/env bash
# Test for T1056.002 (macOS) - show a hidden-answer dialog that closes itself after 3 seconds. Run in a lab/test Mac only.
osascript -e 'display dialog "T1056.002 test - type nothing" default answer "" with hidden answer giving up after 3' 2>/dev/null
echo "T1056.002 test"
