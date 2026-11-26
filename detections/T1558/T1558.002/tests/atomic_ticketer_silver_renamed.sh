#!/usr/bin/env bash
# Test for T1558.002 - run a renamed copy of /usr/bin/true called ticketer.py (nothing is run or changed).
# Run in a lab/test system only.
cp "$(type -P true)" /tmp/ticketer.py
/tmp/ticketer.py -nthash 00000000000000000000000000000000 -domain-sid S-1-5-21-1-2-3 -domain lab.local -spn cifs/host.lab.local administrator
rm -f /tmp/ticketer.py
echo "T1558.002 test"
