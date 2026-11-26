#!/usr/bin/env bash
# Test for T1651 (AWS) - run 'echo' on a TEST instance through SSM. Usage: atomic_ssm_send_command.sh <test-instance-id>.
# Run in a lab AWS account only.
set -euo pipefail
id="${1:?usage: $0 <test-instance-id>}"
aws ssm send-command --instance-ids "$id" --document-name AWS-RunShellScript --parameters 'commands=["echo T1651 test"]'
