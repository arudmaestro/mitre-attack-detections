#!/usr/bin/env bash
# Test for T1098.001 - create and delete an access key for a lab IAM user. Run in a lab AWS account only.
set -euo pipefail
USER_NAME="REPLACE_ME"   # an existing lab IAM user with fewer than 2 keys
KEY_ID=$(aws iam create-access-key --user-name "$USER_NAME" --query 'AccessKey.AccessKeyId' --output text)
aws iam delete-access-key --user-name "$USER_NAME" --access-key-id "$KEY_ID"
echo "Created and deleted $KEY_ID"
