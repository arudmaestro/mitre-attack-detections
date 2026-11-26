#!/usr/bin/env bash
# Test for T1037.002 - set and remove a login hook. Run in a lab/test Mac only (needs sudo).
sudo defaults write com.apple.loginwindow LoginHook /tmp/T1037002_hook.sh
sudo defaults delete com.apple.loginwindow LoginHook
