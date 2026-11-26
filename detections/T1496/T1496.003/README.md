# T1496.003 - Resource Hijacking: SMS Pumping

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1496/003/
- **Platforms:** SaaS

## Summary
Adversaries may leverage messaging services for SMS pumping, which may impact system and/or hosted service availability.

## Status: guidance only
SMS pumping abuses an application's SMS-sending feature (e.g. OTP or invite forms).

## How to detect it
- Application and SMS-provider logs: spikes in messages to premium or unusual country codes, many numbers in sequential ranges.
- Rate limits and geo restrictions on SMS-triggering endpoints.
