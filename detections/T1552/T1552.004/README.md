# T1552.004 - Unsecured Credentials: Private Keys

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1552/004/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may search for private key certificate files on compromised systems for insecurely stored credentials.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Certificate Private Key Export from the Command Line | [sigma](sigma/proc_creation_win_certificate_private_key_export.yml) | [raw](splunk/proc_creation_win_certificate_private_key_export.spl), [CIM](splunk/proc_creation_win_certificate_private_key_export_cim.spl) | [MDE](sentinel/proc_creation_win_certificate_private_key_export.kql), [SecurityEvent](sentinel/proc_creation_win_certificate_private_key_export_securityevent.kql) | medium | experimental |
| SSH Private Key Accessed by a Non-SSH Program on Linux | [sigma](sigma/proc_creation_lnx_ssh_private_key_access.yml) | [CIM](splunk/proc_creation_lnx_ssh_private_key_access.spl) | [MDE](sentinel/proc_creation_lnx_ssh_private_key_access.kql) | medium | experimental |
| SSH Private Key Accessed by a Non-SSH Program on macOS | [sigma](sigma/proc_creation_macos_ssh_private_key_access.yml) | [CIM](splunk/proc_creation_macos_ssh_private_key_access.spl) | [MDE](sentinel/proc_creation_macos_ssh_private_key_access.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Administrators backing up or migrating certificates
- Administrators copying their own keys; configuration management deploying keys
- Administrators copying their own keys

## Limitations
Keys with other file names (.pem, .key, .ppk) and keys read by programs directly are not covered. Command lines that name both the private and the public key (.pub) are excluded to avoid noise from public key copies.

## Testing
See [tests/](tests/).
