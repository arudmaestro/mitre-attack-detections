# T1552.007 - Unsecured Credentials: Container API

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/007/
- **Platforms:** Containers

## Summary
Adversaries may gather credentials via APIs within a containers environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kubernetes Secrets Read with kubectl | [sigma](sigma/proc_creation_lnx_kubectl_get_secrets.yml) | [CIM](splunk/proc_creation_lnx_kubectl_get_secrets.spl) | [MDE](sentinel/proc_creation_lnx_kubectl_get_secrets.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Cluster administrators and deployment scripts reading secrets

## Limitations
Secrets read through the API (client libraries, stolen service account tokens, the kubelet API on port 10250 or the Docker socket) need the Kubernetes audit log (get/list on the secrets resource by unusual identities) or container runtime security.

## Testing
See [tests/](tests/).
