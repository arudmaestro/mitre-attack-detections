#!/usr/bin/env bash
# Test for T1098.003 - attach and detach AdministratorAccess on a lab IAM user. Run in a lab AWS account only.
set -euo pipefail
USER_NAME="REPLACE_ME"
POLICY="arn:aws:iam::aws:policy/AdministratorAccess"
aws iam attach-user-policy --user-name "$USER_NAME" --policy-arn "$POLICY"
aws iam detach-user-policy --user-name "$USER_NAME" --policy-arn "$POLICY"
