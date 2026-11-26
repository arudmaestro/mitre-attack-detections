# T1199 - Trusted Relationship

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1199/
- **Platforms:** IaaS, Identity Provider, Linux, macOS, Office Suite, SaaS, Windows

## Summary
Adversaries may breach or otherwise leverage organizations who have access to intended victims.

## Status: guidance only
Trusted relationship abuse uses a partner's legitimate access (MSP, vendor accounts, delegated admin).

## How to detect it
- Monitor third-party and delegated-admin accounts separately: new access, unusual times, access to new systems.
- Microsoft 365 GDAP / partner relationship changes; VPN logs for vendor accounts.
