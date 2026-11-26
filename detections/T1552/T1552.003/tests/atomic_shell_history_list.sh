#!/usr/bin/env bash
# Test for T1552.003 (Linux / macOS) - list the shell history files (their content is not read).
# Run in a lab/test system only.
ls -l "$HOME/.bash_history" "$HOME/.zsh_history" 2>/dev/null
echo "T1552.003 test"
