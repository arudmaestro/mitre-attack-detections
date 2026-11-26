# T1696.002 - Anti-Automation Evasion: Avoid CAPTCHA

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1696/002/
- **Platforms:** SaaS

## Summary
Adversaries may avoid CAPTCHA challenges by mimicking human behavior.

## Status: guidance only
Bots that mimic human behaviour avoid triggering CAPTCHAs; detection is behavioural analysis in web logs.

## How to detect it
- Bot-management telemetry (mouse / timing signals, device fingerprints) and rate limiting per account and IP range.
