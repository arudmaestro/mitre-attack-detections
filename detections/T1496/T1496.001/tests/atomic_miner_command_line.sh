#!/usr/bin/env bash
# Test for T1496.001 (Linux / macOS) - harmless command line containing a mining pool URL. Run in a lab/test system only.
/bin/echo "stratum+tcp://127.0.0.1:3333 T1496.001 test"
