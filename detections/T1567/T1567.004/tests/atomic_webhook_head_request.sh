#!/usr/bin/env bash
# Test for T1567.004 (Linux) - HEAD request to webhook.site with curl (nothing is posted). Run in a lab/test system only.
curl -s -I -m 5 -o /dev/null https://webhook.site/ || true
echo "T1567.004 test"
