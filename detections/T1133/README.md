# T1133 - External Remote Services

- **Tactic(s):** Persistence, Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1133/
- **Platforms:** Containers, Linux, macOS, Windows

## Summary
Adversaries may leverage external-facing remote services to initially access and/or persist within a network.

## Status: guidance only
External remote services (VPN, Citrix, RDP gateways, exposed SSH) are logged by those services, not by endpoint process telemetry.

## How to detect it
- VPN / remote-access gateway logs: logins from new countries or ASNs, impossible travel, logins outside working hours, MFA failures followed by success.
- Inventory and close Internet-exposed management services.
