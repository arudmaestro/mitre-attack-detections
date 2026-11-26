# T1564.014 - Hide Artifacts: Extended Attributes

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1564/014/
- **Platforms:** Linux, macOS

## Summary
Adversaries may abuse extended attributes (xattrs) on macOS and Linux to hide their malicious data in order to evade detection.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Extended Attribute Written with setfattr on Linux | [sigma](sigma/proc_creation_lnx_setfattr_user_attribute.yml) | [CIM](splunk/proc_creation_lnx_setfattr_user_attribute.spl) | [MDE](sentinel/proc_creation_lnx_setfattr_user_attribute.kql) | low | experimental |
| Extended Attribute Written with xattr on macOS | [sigma](sigma/proc_creation_macos_xattr_write.yml) | [CIM](splunk/proc_creation_macos_xattr_write.spl) | [MDE](sentinel/proc_creation_macos_xattr_write.kql) | low | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).
- Splunk: CIM `Endpoint.Processes` (populated from your macOS EDR or Endpoint Security logs). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on macOS).

## Known false positives & tuning
- Backup, SELinux and storage tools setting attributes
- Developers and installers setting attributes such as com.apple.FinderInfo

## Limitations
Attributes written through the API (setxattr) and reads back (xattr -p, getfattr) are not covered; hunt for large attribute values on executables and in temp folders.

## Testing
See [tests/](tests/).
