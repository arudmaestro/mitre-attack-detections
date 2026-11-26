#!/usr/bin/env bash
# Test for T1552.004 (Linux / macOS) - list the default SSH private key with ls (the key is not read).
# Run in a lab/test system only.
ls -l "$HOME/.ssh/id_rsa" 2>/dev/null
echo "T1552.004 test"
