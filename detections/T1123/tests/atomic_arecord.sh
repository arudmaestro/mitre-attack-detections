#!/usr/bin/env bash
# Test for T1123 (Linux) - record 2 seconds of audio and delete it. Run in a lab/test system with alsa-utils.
arecord -d 2 /tmp/T1123.wav 2>/dev/null
rm -f /tmp/T1123.wav
echo "T1123 test"
