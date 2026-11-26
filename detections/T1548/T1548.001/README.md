# T1548.001 - Abuse Elevation Control Mechanism: Setuid and Setgid

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1548/001/
- **Platforms:** Linux, macOS

## Summary
An adversary may abuse configurations where an application has the setuid or setgid bits set in order to get code running in a different (and possibly more privileged) user’s context.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Setuid or Setgid Files Searched with find on Linux | [sigma](sigma/proc_creation_lnx_find_suid_sgid_files.yml) | [CIM](splunk/proc_creation_lnx_find_suid_sgid_files.spl) | [MDE](sentinel/proc_creation_lnx_find_suid_sgid_files.kql) | low | experimental |
| Setuid or Setgid Files Searched with find on macOS | [sigma](sigma/proc_creation_macos_find_suid_sgid_files.yml) | [CIM](splunk/proc_creation_macos_find_suid_sgid_files.spl) | [MDE](sentinel/proc_creation_macos_find_suid_sgid_files.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Hardening and compliance scans that list setuid files

## Limitations
Setting the setuid bit with chmod is detected by the T1222.002 rules. Running an existing setuid binary to escalate is normal process activity; hunt for shells whose effective user is root but whose parent runs as a normal user (auditd euid != uid).

## Testing
See [tests/](tests/).
