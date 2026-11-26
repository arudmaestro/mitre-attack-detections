# T1213.002 - Data from Information Repositories: Sharepoint

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1213/002/
- **Platforms:** Office Suite, Windows

## Summary
Adversaries may leverage the SharePoint repository as a source to mine valuable information.

## Status: guidance only
SharePoint access is logged in the Microsoft 365 audit log.

## How to detect it
- OfficeActivity / Purview audit: FileDownloaded or FileAccessed counts per user far above baseline, sync of whole libraries, searches for keywords such as password or confidential.
- Defender for Cloud Apps mass-download policies.
