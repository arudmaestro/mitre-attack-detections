#!/usr/bin/env bash
# Test for T1136.001 (Linux) - create and delete a local user. Run in a lab/test system (needs sudo).
sudo useradd t1136001test
sudo userdel -r t1136001test 2>/dev/null
