# T1550.002 - Use Alternate Authentication Material: Pass the Hash

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1550/002/
- **Platforms:** Windows

## Summary
Adversaries may “pass the hash” using stolen password hashes to move laterally within an environment, bypassing normal system access controls.

## Detections
| Name | Sigma | Splunk ES | Sentinel | Severity | Status |
|------|-------|-----------|----------|----------|--------|
| Pass-the-Hash Tool Command Line on Windows | [sigma](sigma/proc_creation_win_pass_the_hash_tools.yml) | [raw](splunk/proc_creation_win_pass_the_hash_tools.spl), [CIM](splunk/proc_creation_win_pass_the_hash_tools_cim.spl) | [MDE](sentinel/proc_creation_win_pass_the_hash_tools.kql), [SecurityEvent](sentinel/proc_creation_win_pass_the_hash_tools_securityevent.kql) | high | experimental |
| Impacket or NetExec Authentication with an NTLM Hash | [sigma](sigma/proc_creation_lnx_impacket_hash_authentication.yml) | [CIM](splunk/proc_creation_lnx_impacket_hash_authentication.spl) | [MDE](sentinel/proc_creation_lnx_impacket_hash_authentication.kql) | high | experimental |

## Required data sources
- Splunk: Sysmon EID 1 (raw search) or CIM `Endpoint.Processes`. Sentinel: `DeviceProcessEvents` (Defender for Endpoint) or `SecurityEvent` 4688 with command-line auditing.
- Splunk: CIM `Endpoint.Processes` (populated from auditd, Sysmon for Linux or your EDR). Sentinel: `DeviceProcessEvents` (Defender for Endpoint on Linux).

## Known false positives & tuning
- Penetration tests and red-team exercises

## Limitations
On the host where the hash is used, Mimikatz sekurlsa::pth creates a LogonType 9 logon by seclogo (detected by the T1134.003 rule). On the target, pass-the-hash looks like a normal NTLM network logon (4624, LogonType 3, NtLmSsp); hunt for NTLM logons by administrator accounts from workstations that normally use Kerberos, and use Defender for Identity. Most attacks run from attacker machines whose processes you do not see.

## Testing
See [tests/](tests/).
