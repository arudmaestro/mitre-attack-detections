#!/usr/bin/env bash
# Test for T1574.006 (Linux / macOS) - run /usr/bin/true with LD_PRELOAD / DYLD_INSERT_LIBRARIES set to a missing
# library through env (the loader prints a warning or ignores it; nothing is loaded). Run in a lab/test system only.
if [ "$(uname)" = "Darwin" ]; then
  env DYLD_INSERT_LIBRARIES=/tmp/t1574006-none.dylib "$(type -P true)"
else
  env LD_PRELOAD=/tmp/t1574006-none.so "$(type -P true)" 2>/dev/null
fi
echo "T1574.006 test"
