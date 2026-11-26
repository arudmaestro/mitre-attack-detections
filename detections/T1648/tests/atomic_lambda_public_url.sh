#!/usr/bin/env bash
# Test for T1648 (AWS) - add and remove a public (AuthType NONE) function URL on a TEST Lambda function.
# Usage: atomic_lambda_public_url.sh <test-function-name>. Run in a lab AWS account only.
set -euo pipefail
fn="${1:?usage: $0 <test-function-name>}"
aws lambda create-function-url-config --function-name "$fn" --auth-type NONE
aws lambda delete-function-url-config --function-name "$fn"
echo "T1648 test"
