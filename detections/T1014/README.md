# T1014 - Rootkit

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1014/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may use rootkits to hide the presence of programs, files, network connections, services, drivers, and other system components.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kernel Module Loaded from Temporary or Home Directory | [sigma](sigma/proc_creation_lnx_kernel_module_load_from_temp.yml) | [CIM](splunk/proc_creation_lnx_kernel_module_load_from_temp.spl) | [MDE](sentinel/proc_creation_lnx_kernel_module_load_from_temp.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Developers building and testing kernel modules

## Limitations
On many distributions insmod is a symlink to kmod, so the process image is /usr/bin/kmod; the rule covers both. Windows rootkits (malicious drivers) need driver-load telemetry and are not covered here.

## Testing
See [tests/](tests/).
