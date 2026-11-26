# T1553.002 - Subvert Trust Controls: Code Signing

- **Tactic(s):** Defense Impairment
- **ATT&CK link:** https://attack.mitre.org/techniques/T1553/002/
- **Platforms:** macOS, Windows

## Summary
Adversaries may create, acquire, or steal code signing materials to sign their malware or tools.

## Status: guidance only
Signed malware looks like legitimate software; the signature itself is valid.

## How to detect it
- Inventory of signers seen in your estate; alert on new or rarely seen signers, certificates on revocation lists and certificates recently issued to unknown companies.
- Defender/EDR signer information (FileProfile / DeviceFileCertificateInfo) and application control (WDAC, AppLocker) by publisher.
