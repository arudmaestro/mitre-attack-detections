#!/usr/bin/env bash
# Test for T1021.004 - ssh with host key checking disabled. Run in a lab/test system only.
# Connects to localhost and exits; failure is fine, the process creation is still logged.
ssh -o StrictHostKeyChecking=no -o BatchMode=yes -o ConnectTimeout=2 127.0.0.1 true 2>/dev/null
echo "T1021.004 test"
