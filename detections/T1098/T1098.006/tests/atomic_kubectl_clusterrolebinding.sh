#!/usr/bin/env bash
# Test for T1098.006 - create and delete a read-only cluster role binding. Run against a lab cluster only.
kubectl create clusterrolebinding t1098006test --clusterrole=view --user=t1098006-user
kubectl delete clusterrolebinding t1098006test
