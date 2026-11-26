#!/usr/bin/env bash
# Test for T1666 (AWS) - MoveAccount with an account and OUs that do not exist (the call fails; CloudTrail records it).
# Run from the management account of a lab organization only.
aws organizations move-account --account-id 000000000000 --source-parent-id r-t166 --destination-parent-id ou-t166-t1666666 || true
echo "T1666 test"
