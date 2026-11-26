# T1564.013 - Hide Artifacts: Bind Mounts

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/013/
- **Platforms:** Linux

## Summary
Adversaries may abuse bind mounts on file structures to hide their activity and artifacts from native utilities.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Bind Mount over a /proc Entry | [sigma](sigma/proc_creation_lnx_bind_mount_over_proc.yml) | [CIM](splunk/proc_creation_lnx_bind_mount_over_proc.spl) | [MDE](sentinel/proc_creation_lnx_bind_mount_over_proc.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Container runtimes and sandboxes that bind-mount /proc entries

## Limitations
Mounts made through the mount() system call by a program have no mount command line; compare /proc/mounts with expected mounts, or use auditd rules on the mount syscall.

## Testing
See [tests/](tests/).
