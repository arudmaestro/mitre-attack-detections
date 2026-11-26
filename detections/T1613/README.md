# T1613 - Container and Resource Discovery

- **Tactic(s):** Discovery
- **ATT&CK link:** https://attack.mitre.org/techniques/T1613/
- **Platforms:** Containers

## Summary
Adversaries may attempt to discover containers and other resources that are available within a containers environment.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kubernetes Permission or Kubelet Discovery | [sigma](sigma/proc_creation_lnx_kubernetes_permission_and_kubelet_discovery.yml) | [CIM](splunk/proc_creation_lnx_kubernetes_permission_and_kubelet_discovery.spl) | [MDE](sentinel/proc_creation_lnx_kubernetes_permission_and_kubelet_discovery.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Administrators and CI checking permissions; operators debugging the kubelet

## Limitations
Container listing with docker ps / kubectl get pods is too common to alert on. API calls made with client libraries or stolen service account tokens need the Kubernetes audit log (selfsubjectrulesreviews, list pods / secrets by service accounts).

## Testing
See [tests/](tests/).
