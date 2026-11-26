#!/usr/bin/env bash
# Test for T1053.007 - create and delete a CronJob. Run against a lab Kubernetes cluster only.
kubectl create cronjob t1053007test --image=busybox --schedule="*/30 * * * *" -- echo test
kubectl delete cronjob t1053007test
