#!/usr/bin/env bash
# Test for T1539 (Linux / macOS) - list browser cookie databases. Run in a lab/test system only.
ls -l "$HOME/.config/google-chrome/Default/Cookies" "$HOME/Library/Application Support/Google/Chrome/Default/Cookies" 2>/dev/null
echo "T1539 test"
