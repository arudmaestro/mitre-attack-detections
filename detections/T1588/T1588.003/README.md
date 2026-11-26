# T1588.003 - Obtain Capabilities: Code Signing Certificates

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1588/003/
- **Platforms:** PRE

## Summary
Adversaries may buy and/or steal code signing certificates that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Stolen code signing certificates produce valid signatures: watch for signers that are new to your estate, revoked certificates (check CRL/OCSP in EDR signer data) and certificates reported as stolen by vendors.
- Application control by publisher plus revocation checks; see T1553.002.
