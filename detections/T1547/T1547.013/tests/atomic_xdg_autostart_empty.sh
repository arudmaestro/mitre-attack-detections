#!/usr/bin/env bash
# Test for T1547.013 (Linux) - copy an empty .desktop file into ~/.config/autostart and remove it.
# Run in a lab/test system only.
mkdir -p "$HOME/.config/autostart"
cp /dev/null "$HOME/.config/autostart/t1547013-test.desktop"
rm -f "$HOME/.config/autostart/t1547013-test.desktop"
echo "T1547.013 test"
