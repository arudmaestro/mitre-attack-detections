#!/usr/bin/env bash
# Test for T1053.006 - create and stop a transient user timer. Run in a lab/test system with a user systemd session.
systemd-run --user --on-active=3600 --unit=t1053006test /bin/true
systemctl --user stop t1053006test.timer
