#!/usr/bin/env bash
# Test for T1505.003 (Linux) - imitate nginx starting 'id' (no web server needed). Run in a lab/test system only.
# A renamed copy of bash called nginx runs 'id' as its child.
cp "$(command -v bash)" /tmp/nginx
/tmp/nginx -c "$(command -v id) >/dev/null; true"
rm -f /tmp/nginx
echo "T1505.003 test"
