#!/usr/bin/env bash
# Test for T1021.008 - push a temporary SSH key with EC2 Instance Connect. Run in a lab AWS account only.
# Set INSTANCE_ID, AZ and OS_USER for a lab instance. The key expires after 60 seconds.
set -euo pipefail
INSTANCE_ID="i-REPLACE_ME"
AZ="REPLACE_ME"          # e.g. us-east-1a
OS_USER="ec2-user"
KEY=$(mktemp -u)
ssh-keygen -q -t ed25519 -N "" -f "$KEY"
aws ec2-instance-connect send-ssh-public-key --instance-id "$INSTANCE_ID" \
  --availability-zone "$AZ" --instance-os-user "$OS_USER" --ssh-public-key "file://$KEY.pub"
rm -f "$KEY" "$KEY.pub"
