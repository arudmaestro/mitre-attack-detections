#!/usr/bin/env bash
# Test for T1543.002 (Linux) - copy an empty file into the user's systemd folder and remove it (never enabled).
# Run in a lab/test system only.
mkdir -p "$HOME/.config/systemd/user"
cp /dev/null "$HOME/.config/systemd/user/t1543002-test.service"
rm -f "$HOME/.config/systemd/user/t1543002-test.service"
echo "T1543.002 test"
