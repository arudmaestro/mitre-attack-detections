#!/usr/bin/env bash
# Test for T1567.003 (Linux) - HEAD request to pastebin.com with curl (nothing is uploaded). Run in a lab/test system only.
curl -s -I -m 5 -o /dev/null https://pastebin.com/ || true
echo "T1567.003 test"
