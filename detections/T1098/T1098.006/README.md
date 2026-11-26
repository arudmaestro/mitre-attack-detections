# T1098.006 - Account Manipulation: Additional Container Cluster Roles

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1098/006/
- **Platforms:** Containers

## Summary
An adversary may add additional roles or permissions to an adversary-controlled user or service account to maintain persistent access to a container orchestration system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kubernetes Role Binding Created with kubectl | [sigma](sigma/proc_creation_lnx_kubectl_role_binding_created.yml) | [CIM](splunk/proc_creation_lnx_kubectl_role_binding_created.spl) | [MDE](sentinel/proc_creation_lnx_kubectl_role_binding_created.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Platform engineers managing RBAC

## Limitations
Bindings created with kubectl apply, Helm or the API are not visible here; Kubernetes audit logs (create on rolebindings/clusterrolebindings, especially to cluster-admin) are the authoritative source.

## Testing
See [tests/](tests/).
