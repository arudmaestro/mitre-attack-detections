#!/usr/bin/env bash
# Test for T1219.001 (Linux) - show VS Code tunnel help (no tunnel is opened). Needs VS Code. Run in a lab/test system only.
if ! command -v code >/dev/null 2>&1; then echo "VS Code (code) not installed." >&2; exit 0; fi
code tunnel --help >/dev/null
echo "T1219.001 test"
