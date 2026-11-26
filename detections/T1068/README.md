# T1068 - Exploitation for Privilege Escalation

- **Tactic(s):** Privilege Escalation
- **ATT&CK link:** https://attack.mitre.org/techniques/T1068/
- **Platforms:** Containers, Linux, macOS, Windows

## Summary
Adversaries may exploit software vulnerabilities in an attempt to elevate privileges.

## Status: guidance only
Privilege escalation exploits are specific to each vulnerability; there is no generic log signature.

## How to detect it
- Vulnerability and patch management (the primary control).
- EDR exploit protection and alerts.
- Hunt: processes running as SYSTEM/root whose parent runs as a normal user.
