# T1053.007 - Scheduled Task/Job: Container Orchestration Job

- **Tactic(s):** Execution, Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1053/007/
- **Platforms:** Containers

## Summary
Adversaries may abuse task scheduling functionality provided by container orchestration tools such as Kubernetes to schedule deployment of containers configured to execute malicious code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kubernetes Job or CronJob Created with kubectl | [sigma](sigma/proc_creation_lnx_kubectl_create_job.yml) | [CIM](splunk/proc_creation_lnx_kubectl_create_job.spl) | [MDE](sentinel/proc_creation_lnx_kubectl_create_job.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Platform engineers and CI/CD pipelines

## Limitations
Jobs created with kubectl apply, API calls or from Windows/macOS clients are not visible here. Kubernetes API audit logs (create on jobs/cronjobs resources) are the authoritative source.

## Testing
See [tests/](tests/).
