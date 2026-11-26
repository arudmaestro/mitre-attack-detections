# T1696.001 - Anti-Automation Evasion: Automate CAPTCHA Completion

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1696/001/
- **Platforms:** SaaS

## Summary
Adversaries may attempt to use bots to successfully solve CAPTCHA challenges.

## Status: guidance only
CAPTCHA solving by bots or solver services is seen in web application and bot-protection logs.

## How to detect it
- Bot-management / WAF analytics for automated sign-ups and logins that pass CAPTCHAs at machine speed or from solver-service IP ranges.
