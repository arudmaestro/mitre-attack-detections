#!/usr/bin/env bash
# Test for T1219.002 (Linux / macOS) - run a renamed copy of /usr/bin/true called anydesk. Run in a lab/test system only.
cp "$(type -P true)" /tmp/anydesk
/tmp/anydesk
rm -f /tmp/anydesk
echo "T1219.002 test"
