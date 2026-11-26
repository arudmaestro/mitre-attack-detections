# T1590.001 - Gather Victim Network Information: Domain Properties

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1590/001/
- **Platforms:** PRE

## Summary
Adversaries may gather information about the victim's network domain(s) that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Domain and certificate information is public (WHOIS, certificate transparency); use registrar privacy and avoid listing internal host names in public certificates.
- Identity-provider logs for tenant and user enumeration (e.g. requests to Entra ID GetCredentialType / OpenID configuration from unusual sources).
