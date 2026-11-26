#!/usr/bin/env bash
# Test for T1217 (Linux / macOS) - list browser bookmark files. Run in a lab/test system only.
ls -l "$HOME/.config/google-chrome/Default/Bookmarks" "$HOME/Library/Safari/Bookmarks.plist" 2>/dev/null
echo "T1217 test"
