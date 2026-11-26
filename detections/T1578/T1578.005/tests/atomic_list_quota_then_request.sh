#!/usr/bin/env bash
# Test for T1578.005 (AWS) - request a quota increase that is lower than the current value (the request is rejected
# with an error, but CloudTrail records the call). Run in a lab AWS account only.
aws service-quotas request-service-quota-increase --service-code ec2 --quota-code L-1216C47A --desired-value 1 || true
echo "T1578.005 test"
