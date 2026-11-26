# T1036.001 - Masquerading: Invalid Code Signature

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1036/001/
- **Platforms:** macOS, Windows

## Summary
Adversaries may attempt to mimic features of valid code signatures to increase the chance of deceiving a user, analyst, or tool.

## Status: guidance only
Invalid code signatures need signature verification data, which process creation logs do not include.

## How to detect it
- Sysmon image load (EID 7) Signed/SignatureStatus fields, or the DeviceFileCertificateInfo table in Defender.
- EDR alerts for binaries signed with revoked or mismatched certificates.
