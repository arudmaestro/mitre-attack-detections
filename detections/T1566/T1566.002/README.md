# T1566.002 - Phishing: Spearphishing Link

- **Tactic(s):** Initial Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1566/002/
- **Platforms:** Identity Provider, Linux, macOS, Office Suite, SaaS, Windows

## Summary
Adversaries may send spearphishing emails with a malicious link in an attempt to gain access to victim systems.

## Status: guidance only
Phishing links are seen in mail and proxy logs, not as endpoint processes (the browser opening a link is normal).

## How to detect it
- Mail security (Defender for Office 365 Safe Links, URL click logs - UrlClickEvents), proxy / DNS logs for newly registered domains clicked from mail.
- Follow-up behaviour on endpoints: downloads run from browsers (T1204.002 rules), credential phishing pages (identity sign-in anomalies).
