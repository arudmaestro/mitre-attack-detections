# T1091 - Replication Through Removable Media

- **Tactic(s):** Lateral Movement, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1091/
- **Platforms:** Windows

## Summary
Adversaries may move onto systems, possibly those on disconnected or air-gapped networks, by copying malware to removable media and taking advantage of Autorun features when the media is inserted into a system and executes.

## Status: guidance only
Replication through removable media relies on users running files from USB drives; drive letters vary per host.

## How to detect it
- Device control: block or audit autorun and execution from removable media.
- EDR: processes started from removable drives (EDR marks the drive type).
