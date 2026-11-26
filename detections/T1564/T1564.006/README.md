# T1564.006 - Hide Artifacts: Run Virtual Instance

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/006/
- **Platforms:** ESXi, Linux, macOS, Windows

## Summary
Adversaries may carry out malicious operations using a virtual instance to avoid detection.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Virtual Machine Started Headless on a Windows Host | [sigma](sigma/proc_creation_win_headless_virtual_machine.yml) | [raw](splunk/proc_creation_win_headless_virtual_machine.spl), [CIM](splunk/proc_creation_win_headless_virtual_machine_cim.spl) | [MDE](sentinel/proc_creation_win_headless_virtual_machine.kql), [SecurityEvent](sentinel/proc_creation_win_headless_virtual_machine_securityevent.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.

## Known false positives & tuning
- Developers and testers who run virtual machines

## Limitations
Hyper-V VMs (Start-VM), WSL (T1202) and renamed hypervisor binaries are not covered. On hosts that should not run VMs, alert on any hypervisor installation (new VirtualBox or QEMU drivers and services).

## Testing
See [tests/](tests/).
