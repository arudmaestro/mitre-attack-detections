#!/usr/bin/env bash
# Test for T1115 (macOS) - read the clipboard. Run in a lab/test Mac only.
pbpaste > /dev/null
echo "T1115 test"
