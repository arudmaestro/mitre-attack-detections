# T1495 - Firmware Corruption

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1495/
- **Platforms:** Linux, macOS, Network Devices, Windows

## Summary
Adversaries may overwrite or corrupt the flash memory contents of system BIOS or other firmware in devices attached to a system in order to render them inoperable or unable to boot, thus denying the availability to use the devices and/or the system.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Firmware Written or Erased with flashrom | [sigma](sigma/proc_creation_lnx_flashrom_write.yml) | [CIM](splunk/proc_creation_lnx_flashrom_write.spl) | [MDE](sentinel/proc_creation_lnx_flashrom_write.kql) | high | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Planned firmware updates by hardware administrators

## Limitations
Firmware corruption through vendor tools or from a compromised BMC/management controller is not covered. Use firmware integrity checks (measured boot, vendor attestation) and BMC logs. Windows firmware tools vary by vendor; add their names for your hardware.

## Testing
See [tests/](tests/).
