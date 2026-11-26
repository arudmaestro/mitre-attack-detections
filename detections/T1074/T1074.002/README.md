# T1074.002 - Data Staged: Remote Data Staging

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1074/002/
- **Platforms:** ESXi, IaaS, Linux, macOS, Windows

## Summary
Adversaries may stage data collected from multiple systems in a central location or directory on one system prior to Exfiltration.

## Status: guidance only
Remote staging copies data to another internal host, which looks like normal file-share traffic.

## How to detect it
- File server auditing (5145) for large writes from one host; NDR for unusual internal SMB transfer volume.
