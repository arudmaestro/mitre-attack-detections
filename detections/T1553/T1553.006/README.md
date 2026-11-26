# T1553.006 - Subvert Trust Controls: Code Signing Policy Modification

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1553/006/
- **Platforms:** macOS, Windows

## Summary
Adversaries may modify code signing policies to enable execution of unsigned or self-signed code.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Driver Signature Enforcement Weakened with bcdedit | [sigma](sigma/proc_creation_win_bcdedit_disable_code_integrity.yml) | [raw](splunk/proc_creation_win_bcdedit_disable_code_integrity.spl), [CIM](splunk/proc_creation_win_bcdedit_disable_code_integrity_cim.spl) | [MDE](sentinel/proc_creation_win_bcdedit_disable_code_integrity.kql), [SecurityEvent](sentinel/proc_creation_win_bcdedit_disable_code_integrity_securityevent.kql) | high | experimental |
| System Integrity Protection Disabled with csrutil | [sigma](sigma/proc_creation_macos_csrutil_disable.yml) | [CIM](splunk/proc_creation_macos_csrutil_disable.spl) | [MDE](sentinel/proc_creation_macos_csrutil_disable.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Driver developers on test machines
- Developers and researchers on test Macs

## Limitations
csrutil disable only works from macOS Recovery, where your EDR does not run; check the SIP status reported by your MDM/EDR (csrutil status) instead. On Windows, the Vulnerable Driver Blocklist and HVCI settings (CI\Config, DeviceGuard registry keys) can also be weakened; those changes are not covered here.

## Testing
See [tests/](tests/).
