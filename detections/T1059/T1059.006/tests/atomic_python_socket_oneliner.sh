#!/usr/bin/env bash
# Test for T1059.006 - Python one-liner. Run in a lab/test system only.
# Imports socket but opens no connection.
python3 -c 'import socket; print("T1059.006 test")'
