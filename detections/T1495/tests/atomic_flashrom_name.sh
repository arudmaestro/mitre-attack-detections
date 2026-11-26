#!/usr/bin/env bash
# Test for T1495 (Linux) - run a renamed copy of /usr/bin/true called flashrom with a write switch (no firmware is touched).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/flashrom
/tmp/flashrom -w /dev/null
rm -f /tmp/flashrom
echo "T1495 test"
