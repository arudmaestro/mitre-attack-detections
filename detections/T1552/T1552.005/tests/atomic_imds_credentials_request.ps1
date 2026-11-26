# Test for T1552.005 (Windows) - request the AWS role credentials path with curl.exe and a 2 s timeout; the answer is discarded.
# Off-cloud the request just times out. Run in a lab/test VM only.
curl.exe -s -m 2 -o NUL http://169.254.169.254/latest/meta-data/iam/security-credentials/
