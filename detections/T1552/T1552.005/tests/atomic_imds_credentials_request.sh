#!/usr/bin/env bash
# Test for T1552.005 (Linux) - request the AWS role credentials path with a 2 s timeout; the answer is discarded.
# Off-cloud the request just times out. Run in a lab/test system only.
curl -s -m 2 -o /dev/null http://169.254.169.254/latest/meta-data/iam/security-credentials/ || true
echo "T1552.005 test"
