#!/usr/bin/env bash
# Test for T1550.002 - run a renamed copy of /usr/bin/true called wmiexec.py (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/wmiexec.py
/tmp/wmiexec.py -hashes :aad3b435b51404eeaad3b435b51404ee lab/admin@192.0.2.10
rm -f /tmp/wmiexec.py
echo "T1550.002 test"
