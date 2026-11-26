# T1547.006 - Boot or Logon Autostart Execution: Kernel Modules and Extensions

- **Tactic(s):** Persistence, Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1547/006/
- **Platforms:** macOS, Linux

## Summary
Adversaries may modify the kernel to automatically execute programs on system boot.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kernel Module Loaded with insmod | [sigma](sigma/proc_creation_lnx_insmod.yml) | [CIM](splunk/proc_creation_lnx_insmod.spl) | [MDE](sentinel/proc_creation_lnx_insmod.kql) | medium | experimental |
| Kernel Extension Loaded on macOS | [sigma](sigma/proc_creation_macos_kext_load.yml) | [CIM](splunk/proc_creation_macos_kext_load.spl) | [MDE](sentinel/proc_creation_macos_kext_load.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Driver developers and vendor installers loading out-of-tree modules
- Hardware and security vendors installing kernel extensions

## Limitations
Modules loaded through the init_module/finit_module system calls by other programs need auditd (-a always,exit -S init_module,finit_module) or EDR. On Linux, kernel messages about unsigned/tainting modules are another signal.

## Testing
See [tests/](tests/).
