#!/usr/bin/env bash
# Test for T1020.001 - create and delete a VPC traffic mirror target. Run in a lab AWS account only.
# Requires the AWS CLI with permissions for ec2:CreateTrafficMirrorTarget/DeleteTrafficMirrorTarget.
# Set ENI_ID to a network interface in your lab account.
set -euo pipefail
ENI_ID="eni-REPLACE_ME"
TARGET_ID=$(aws ec2 create-traffic-mirror-target --network-interface-id "$ENI_ID" \
  --description "T1020.001 test" --query 'TrafficMirrorTarget.TrafficMirrorTargetId' --output text)
echo "Created $TARGET_ID"
aws ec2 delete-traffic-mirror-target --traffic-mirror-target-id "$TARGET_ID"
echo "Deleted $TARGET_ID"
