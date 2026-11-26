# T1689 - Downgrade Attack

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1689/
- **Platforms:** macOS, Windows, Linux

## Summary
Adversaries may downgrade or use a version of system features that may be outdated, vulnerable, and/or does not support updated security controls.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| PowerShell Version 2 Engine Started | [sigma](sigma/proc_creation_win_powershell_version_2.yml) | [raw](splunk/proc_creation_win_powershell_version_2.spl), [CIM](splunk/proc_creation_win_powershell_version_2_cim.spl) | [MDE](sentinel/proc_creation_win_powershell_version_2.kql), [SecurityEvent](sentinel/proc_creation_win_powershell_version_2_securityevent.kql) | high | experimental |
| NTLM Compatibility Level Lowered (LM / NTLMv1 Allowed) | [sigma](sigma/registry_set_win_ntlm_lm_compatibility_lowered.yml) | [raw](splunk/registry_set_win_ntlm_lm_compatibility_lowered.spl), [CIM](splunk/registry_set_win_ntlm_lm_compatibility_lowered_cim.spl) | [MDE](sentinel/registry_set_win_ntlm_lm_compatibility_lowered.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: Sysmon EID 13 (raw search) or CIM `Endpoint.Registry`. Sentinel: `DeviceRegistryEvents` (Defender for Endpoint).

## Known false positives & tuning
- Legacy scripts that require PowerShell 2.0
- Legacy application compatibility settings (should be documented exceptions)

## Limitations
Remove the PowerShell 2.0 feature (Disable-WindowsOptionalFeature MicrosoftWindowsPowerShellV2Root) so the downgrade is impossible. Other downgrades (SMBv1 enabled, TLS 1.0 re-enabled, old driver versions loaded) are not covered.

## Testing
See [tests/](tests/).
