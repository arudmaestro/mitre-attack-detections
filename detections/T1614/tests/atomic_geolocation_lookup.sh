#!/usr/bin/env bash
# Test for T1614 (Linux) - query ipapi.co with curl (the answer is discarded). Run in a lab/test system only.
curl -s -m 5 -o /dev/null https://ipapi.co/json/ || true
echo "T1614 test"
