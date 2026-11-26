#!/usr/bin/env bash
# Test for T1135 (Linux) - list SMB shares on localhost (fails without a server; still logged). Run in a lab/test system.
smbclient -L //127.0.0.1 -N 2>/dev/null
echo "T1135 test"
