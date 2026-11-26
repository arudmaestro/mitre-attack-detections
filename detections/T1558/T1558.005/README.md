# T1558.005 - Steal or Forge Kerberos Tickets: Ccache Files

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1558/005/
- **Platforms:** Linux, macOS

## Summary
Adversaries may attempt to steal Kerberos tickets stored in credential cache files (or ccache).

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Kerberos Credential Cache File Accessed on Linux | [sigma](sigma/proc_creation_lnx_kerberos_ccache_access.yml) | [CIM](splunk/proc_creation_lnx_kerberos_ccache_access.spl) | [MDE](sentinel/proc_creation_lnx_kerberos_ccache_access.kql) | medium | experimental |

## Required data sources
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Scripts that set KRB5CCNAME for service accounts; backup tools

## Limitations
Caches stored in the kernel keyring (KEYRING:) or by SSSD (/var/lib/sss/db/) and caches read by programs directly are not covered; auditd rules on /tmp/krb5cc_* and /var/lib/sss/db read access by non-owners cover more. macOS stores tickets through the API (KCM), not in files.

## Testing
See [tests/](tests/).
