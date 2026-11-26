#!/usr/bin/env bash
# Test for T1053.003 - add a comment line to the user's crontab and restore it. Run in a lab/test system only.
BACKUP=$(mktemp)
crontab -l > "$BACKUP" 2>/dev/null || true
(cat "$BACKUP"; echo "# T1053.003 test") | crontab -
crontab "$BACKUP"
rm -f "$BACKUP"
