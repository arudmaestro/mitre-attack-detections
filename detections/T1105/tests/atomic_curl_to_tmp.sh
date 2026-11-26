#!/usr/bin/env bash
# Test for T1105 (Linux) - download a web page into /tmp. Run in a lab/test system only (one HTTPS request).
curl -s -o /tmp/T1105.html https://example.com/
rm -f /tmp/T1105.html
