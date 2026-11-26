# T1003.007 - OS Credential Dumping: Proc Filesystem

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1003/007/
- **Platforms:** Linux

## Summary
Adversaries may gather credentials from the proc filesystem or `/proc`.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Process Memory Access via /proc maps or mem | [sigma](sigma/proc_creation_lnx_proc_mem_maps_access.yml) | [CIM](splunk/proc_creation_lnx_proc_mem_maps_access.spl) | [MDE](sentinel/proc_creation_lnx_proc_mem_maps_access.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Debugging and performance tools
- Developers inspecting process memory maps

## Testing
See [tests/](tests/).
