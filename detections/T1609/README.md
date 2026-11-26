# T1609 - Container Administration Command

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1609/
- **Platforms:** Containers

## Summary
Adversaries may abuse a container administration service to execute commands within a container.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Node Debug Pod or File Copy with kubectl | [sigma](sigma/proc_creation_lnx_kubectl_debug_node_or_cp.yml) | [CIM](splunk/proc_creation_lnx_kubectl_debug_node_or_cp.spl) | [MDE](sentinel/proc_creation_lnx_kubectl_debug_node_or_cp.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Cluster administrators troubleshooting nodes or copying logs

## Limitations
kubectl / docker exec into containers is detected by the T1059.013 rule. Commands sent to the API server from other machines or with client libraries need the Kubernetes audit log (pods/exec, pods/attach, nodes/proxy requests), which is not a data source of this project yet.

## Testing
See [tests/](tests/).
