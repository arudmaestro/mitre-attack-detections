#!/usr/bin/env bash
# Test for T1070.003 (Linux) - disable history in a child shell (your history is not touched). Run in a lab/test system only.
bash -c 'unset HISTFILE; echo T1070.003 test'
