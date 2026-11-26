# Test for T1518.002 - query a Veeam service name with sc (errors harmlessly if Veeam is not installed). Run in a lab/test VM only.
sc.exe query VeeamBackupSvc
