#!/usr/bin/env bash
# Test for T1578.004 (AWS) - reset the root volume of a TEST instance to its launch state. The instance reboots and
# its disk content is lost. Usage: atomic_replace_root_volume.sh <test-instance-id>. Run in a lab AWS account only.
set -euo pipefail
id="${1:?usage: $0 <test-instance-id>}"
aws ec2 create-replace-root-volume-task --instance-id "$id"
echo "T1578.004 test"
