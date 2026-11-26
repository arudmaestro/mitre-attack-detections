#!/usr/bin/env bash
# Test for T1558.005 (Linux) - list Kerberos credential cache files with ls (they are not read).
# Run in a lab/test system only.
ls -l /tmp/krb5cc_* 2>/dev/null
echo "T1558.005 test"
