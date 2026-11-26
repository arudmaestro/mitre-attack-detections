#!/usr/bin/env bash
# Test for T1140 (Linux) - decode a harmless Base64 echo command and run it. Run in a lab/test system only.
bash -c 'echo ZWNobyBUMTE0MCB0ZXN0Cg== | base64 -d | sh'
