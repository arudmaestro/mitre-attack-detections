#!/usr/bin/env bash
# Test for T1537 (AWS) - grant and revoke createVolumePermission on a TEST EBS snapshot. Run in a lab AWS account only.
# Usage: atomic_share_snapshot_with_account.sh <snapshot-id> <12-digit-test-account-id>
set -euo pipefail
snap="${1:?usage: $0 <snapshot-id> <account-id>}"; acct="${2:?usage: $0 <snapshot-id> <account-id>}"
aws ec2 modify-snapshot-attribute --snapshot-id "$snap" --attribute createVolumePermission --operation-type add --user-ids "$acct"
aws ec2 modify-snapshot-attribute --snapshot-id "$snap" --attribute createVolumePermission --operation-type remove --user-ids "$acct"
echo "T1537 test"
