#!/usr/bin/env bash
# Test for T1201 (Linux / macOS) - read the password policy. Run in a lab/test system only.
if command -v pwpolicy >/dev/null 2>&1; then
  pwpolicy getaccountpolicies >/dev/null 2>&1
else
  chage -l "$(id -un)" >/dev/null 2>&1
  cat /etc/login.defs >/dev/null 2>&1
fi
echo "T1201 test"
