# T1553.004 - Subvert Trust Controls: Install Root Certificate

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1553/004/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may install a root certificate on a compromised system to avoid warnings when connecting to adversary controlled web servers.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Root Certificate Installed from the Command Line on Windows | [sigma](sigma/proc_creation_win_root_certificate_installed.yml) | [raw](splunk/proc_creation_win_root_certificate_installed.spl), [CIM](splunk/proc_creation_win_root_certificate_installed_cim.spl) | [MDE](sentinel/proc_creation_win_root_certificate_installed.kql), [SecurityEvent](sentinel/proc_creation_win_root_certificate_installed_securityevent.kql) | medium | experimental |
| Root Certificate Added to the Registry Store | [sigma](sigma/registry_set_win_root_certificate_added.yml) | [raw](splunk/registry_set_win_root_certificate_added.spl), [CIM](splunk/registry_set_win_root_certificate_added_cim.spl) | [MDE](sentinel/registry_set_win_root_certificate_added.kql) | low | experimental |
| CA Certificate Written to the Trust Store on Linux | [sigma](sigma/proc_creation_lnx_ca_certificate_written.yml) | [CIM](splunk/proc_creation_lnx_ca_certificate_written.spl) | [MDE](sentinel/proc_creation_lnx_ca_certificate_written.kql) | medium | experimental |
| Trusted Certificate Added with security add-trusted-cert | [sigma](sigma/proc_creation_macos_trusted_certificate_added.yml) | [CIM](splunk/proc_creation_macos_trusted_certificate_added.spl) | [MDE](sentinel/proc_creation_macos_trusted_certificate_added.kql) | medium | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Enterprise PKI deployment and proxy / TLS inspection software installing their root
- Enterprise PKI, Group Policy certificate deployment, TLS inspection and VPN software
- Configuration management deploying the corporate root CA
- MDM, VPN and TLS inspection software installing their root

## Limitations
Certificates added through the CryptoAPI by programs show only in the registry rule; on Linux, certificates added to application-specific stores (Java cacerts, Firefox NSS) are not covered.

## Testing
See [tests/](tests/).
