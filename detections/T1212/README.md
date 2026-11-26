# T1212 - Exploitation for Credential Access

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1212/
- **Platforms:** Linux, Windows, macOS, Identity Provider

## Summary
Adversaries may exploit software vulnerabilities in an attempt to collect credentials.

## Status: guidance only
Exploitation for credential access (e.g. Kerberos, Netlogon, NTLM relay flaws) is visible mainly in authentication and network data.

## How to detect it
- Domain controller: Netlogon 5827-5831 (Zerologon), anomalous Kerberos ticket requests (4768/4769 with unusual encryption types or PAC issues).
- Defender for Identity / NDR exploit alerts; patch identity infrastructure first.
