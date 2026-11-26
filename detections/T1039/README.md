# T1039 - Data from Network Shared Drive

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1039/
- **Platforms:** Linux, macOS, Windows

## Summary
Adversaries may search network shares on computers they have compromised to find files of interest.

## Status: guidance only
Reading files from network shares looks like normal file-server use; volume and context distinguish collection.

## How to detect it
- File server auditing (Security 5145) for one user reading many files or sensitive shares in a short time.
- Admin-share access is covered by T1021.002.
