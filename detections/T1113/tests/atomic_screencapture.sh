#!/usr/bin/env bash
# Test for T1113 (macOS) - silent screenshot, then delete it. Run in a lab/test Mac only.
screencapture -x /tmp/T1113.png
rm -f /tmp/T1113.png
