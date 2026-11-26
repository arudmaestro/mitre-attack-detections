#!/usr/bin/env bash
# Test for T1110.002 (Linux) - run john --help. Run in a lab/test system with John the Ripper installed.
john --help > /dev/null 2>&1
echo "T1110.002 test"
