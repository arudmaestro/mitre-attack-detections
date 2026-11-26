#!/usr/bin/env bash
# Test for T1685.002 (AWS) - StopLogging for a trail that does not exist (the call fails; CloudTrail records it).
# Run in a lab AWS account only.
aws cloudtrail stop-logging --name t1685002-trail-does-not-exist || true
echo "T1685.002 test"
