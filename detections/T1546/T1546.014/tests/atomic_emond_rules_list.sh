#!/usr/bin/env bash
# Test for T1546.014 (macOS) - list the emond rules folder (read only). Run in a lab/test Mac only.
ls -l /etc/emond.d/rules/ 2>/dev/null
echo "T1546.014 test"
