# Tests - T1485.001

Emulation only. Run in a lab/test system.

## Script
- [atomic_s3_lifecycle.sh](atomic_s3_lifecycle.sh)

The rule only touches the prefix `T1485-001-test/`. Note that `delete-bucket-lifecycle` removes **all** lifecycle rules of the bucket, so use a bucket without other rules.
