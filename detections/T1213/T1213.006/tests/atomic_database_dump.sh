#!/usr/bin/env bash
# Test for T1213.006 (Linux) - start a dump tool (version check only). Run in a lab/test system only.
for t in mysqldump mariadb-dump pg_dump mongodump; do
  if command -v "$t" >/dev/null 2>&1; then "$t" --version >/dev/null 2>&1; echo "T1213.006 test ($t)"; exit 0; fi
done
echo "No database dump tool installed (mysqldump, mariadb-dump, pg_dump or mongodump)." >&2
