#!/usr/bin/env bash
# Test for T1556.006 (AWS) - DeactivateMFADevice for a device that does not exist (the call returns an error).
# Usage: atomic_deactivate_mfa_missing.sh <test-iam-user>. Run with a lab AWS account only.
user="${1:?usage: $0 <test-iam-user>}"
acct=$(aws sts get-caller-identity --query Account --output text)
aws iam deactivate-mfa-device --user-name "$user" --serial-number "arn:aws:iam::${acct}:mfa/t1556006-test-does-not-exist" || true
echo "T1556.006 test"
