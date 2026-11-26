#!/usr/bin/env bash
# Test for T1098.004 - append and remove a comment line in ~/.ssh/authorized_keys. Run in a lab/test system only.
mkdir -p ~/.ssh
EXISTED=0; [ -f ~/.ssh/authorized_keys ] && EXISTED=1
bash -c 'echo "# T1098.004 test" >> ~/.ssh/authorized_keys'
sed -i.bak '/# T1098.004 test/d' ~/.ssh/authorized_keys && rm -f ~/.ssh/authorized_keys.bak
[ "$EXISTED" = 0 ] && [ ! -s ~/.ssh/authorized_keys ] && rm -f ~/.ssh/authorized_keys
echo "T1098.004 test"
