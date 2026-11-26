# T1005 - Data from Local System

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1005/
- **Platforms:** ESXi, Linux, macOS, Network Devices, Windows

## Summary
Adversaries may search local system sources, such as file systems, configuration files, local databases, virtual machine files, or process memory, to find files of interest and sensitive data prior to Exfiltration.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Recursive Search for Documents and Data Files | [sigma](sigma/proc_creation_win_recursive_document_search.yml) | [raw](splunk/proc_creation_win_recursive_document_search.spl), [CIM](splunk/proc_creation_win_recursive_document_search_cim.spl) | [MDE](sentinel/proc_creation_win_recursive_document_search.kql), [SecurityEvent](sentinel/proc_creation_win_recursive_document_search_securityevent.kql) | low | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Users and administrators searching for files
- Backup and inventory scripts

## Limitations
Low-fidelity on its own. Best used for hunting or correlated with other collection/exfiltration activity from the same host and user.

## Testing
See [tests/](tests/).
