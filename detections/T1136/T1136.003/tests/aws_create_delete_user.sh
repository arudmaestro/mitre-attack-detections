#!/usr/bin/env bash
# Test for T1136.003 - create and delete an IAM user. Run in a lab AWS account only.
set -euo pipefail
aws iam create-user --user-name t1136003-test > /dev/null
aws iam delete-user --user-name t1136003-test
echo "T1136.003 test"
