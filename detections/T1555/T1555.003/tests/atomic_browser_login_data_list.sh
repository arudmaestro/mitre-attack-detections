#!/usr/bin/env bash
# Test for T1555.003 (Linux / macOS) - list the Chrome 'Login Data' files (not read). Run in a lab/test system only.
ls -l "$HOME/.config/google-chrome/Default/Login Data" "$HOME/Library/Application Support/Google/Chrome/Default/Login Data" 2>/dev/null
echo "T1555.003 test"
