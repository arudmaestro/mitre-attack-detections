#!/usr/bin/env bash
# Test for T1485.001 (AWS) - set and remove a lifecycle rule on a TEST bucket you own. Run in a lab AWS account only.
# Usage: atomic_s3_lifecycle.sh <test-bucket-name>
set -euo pipefail
b="${1:?usage: $0 <test-bucket-name>}"
aws s3api put-bucket-lifecycle-configuration --bucket "$b" --lifecycle-configuration \
  '{"Rules":[{"ID":"T1485-001-test","Status":"Enabled","Filter":{"Prefix":"T1485-001-test/"},"Expiration":{"Days":365}}]}'
aws s3api delete-bucket-lifecycle --bucket "$b"
echo "T1485.001 test"
