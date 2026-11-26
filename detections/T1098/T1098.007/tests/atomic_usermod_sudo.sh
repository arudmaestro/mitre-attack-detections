#!/usr/bin/env bash
# Test for T1098.007 (Linux) - add a temporary user to the admin group and delete it. Run in a lab/test system (needs sudo).
G=sudo; getent group sudo > /dev/null || G=wheel
sudo useradd t1098007test
sudo usermod -aG "$G" t1098007test
sudo userdel -r t1098007test 2>/dev/null
