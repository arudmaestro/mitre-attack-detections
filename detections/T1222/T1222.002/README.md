# T1222.002 - File and Directory Permissions Modification: Linux and Mac Permissions

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1222/002/
- **Platforms:** Linux, macOS

## Summary
Adversaries may modify file or directory permissions/attributes to evade access control lists (ACLs) and access protected files.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Setuid Bit Set with chmod on Linux | [sigma](sigma/proc_creation_lnx_chmod_setuid.yml) | [CIM](splunk/proc_creation_lnx_chmod_setuid.spl) | [MDE](sentinel/proc_creation_lnx_chmod_setuid.kql) | medium | experimental |
| Setuid Bit Set with chmod on macOS | [sigma](sigma/proc_creation_macos_chmod_setuid.yml) | [CIM](splunk/proc_creation_macos_chmod_setuid.spl) | [MDE](sentinel/proc_creation_macos_chmod_setuid.kql) | medium | experimental |
| Immutable Attribute Removed with chattr | [sigma](sigma/proc_creation_lnx_chattr_remove_immutable.yml) | [CIM](splunk/proc_creation_lnx_chattr_remove_immutable.spl) | [MDE](sentinel/proc_creation_lnx_chattr_remove_immutable.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Package installation scripts and administrators installing setuid tools
- Installers and administrators installing setuid tools
- Administrators updating files they protected with chattr +i

## Limitations
Permission changes made through system calls by a program (not the chmod/chattr tools) need auditd rules on chmod/fchmodat syscalls or EDR file telemetry.

## Testing
See [tests/](tests/).
