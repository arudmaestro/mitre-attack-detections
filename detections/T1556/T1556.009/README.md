# T1556.009 - Modify Authentication Process: Conditional Access Policies

- **Tactic(s):** Defense Impairment, Persistence, Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1556/009/
- **Platforms:** IaaS, Identity Provider

## Summary
Adversaries may disable or modify conditional access policies to enable persistent access to compromised accounts.

## Status: guidance only
Conditional Access policies are changed in Entra ID, which is not a data source of this project yet.

## How to detect it
- Entra ID audit logs: 'Update conditional access policy', 'Delete conditional access policy' and new named locations or trusted IP ranges, especially by accounts that do not manage policies.
- Require approval (PIM) for the Conditional Access Administrator role.
