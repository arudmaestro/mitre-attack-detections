#!/usr/bin/env bash
# Test for T1040 (Linux) - capture 5 packets on loopback. Run in a lab/test system (needs root).
sudo timeout 5 tcpdump -i lo -c 5 > /dev/null 2>&1
echo "T1040 test"
