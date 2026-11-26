#!/usr/bin/env bash
# Test for T1555.006 (AWS) - BatchGetSecretValue for a secret that does not exist (the call returns an error).
# Run with a lab AWS account only.
aws secretsmanager batch-get-secret-value --secret-id-list t1555006-test-does-not-exist || true
echo "T1555.006 test"
