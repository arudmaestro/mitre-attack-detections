# T1213.004 - Data from Information Repositories: Customer Relationship Management Software

- **Tactic(s):** Collection
- **ATT&CK link:** https://attack.mitre.org/techniques/T1213/004/
- **Platforms:** SaaS

## Summary
Adversaries may leverage Customer Relationship Management (CRM) software to mine valuable information.

## Status: guidance only
CRM data access is logged by the CRM platform.

## How to detect it
- Salesforce Event Monitoring / Dynamics audit: large report exports, bulk API queries, data loader use by unusual accounts.
