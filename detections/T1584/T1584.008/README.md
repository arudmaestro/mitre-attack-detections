# T1584.008 - Compromise Infrastructure: Network Devices

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1584/008/
- **Platforms:** PRE

## Summary
Adversaries may compromise third-party network devices that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Threat intelligence on the adversary's infrastructure and tooling (domains, IP ranges, certificates, file hashes) and blocking known indicators.
- For your own network devices: configuration integrity checks, firmware hash comparison with vendor values, and AAA / syslog review for logins from unexpected sources (see the T1556.004 guidance; T1601 is covered in a later batch).
