# T1586.002 - Compromise Accounts: Email Accounts

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1586/002/
- **Platforms:** PRE

## Summary
Adversaries may compromise email accounts that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Mail security: messages from known partners (vendor email compromise) with changed bank details, unusual links or attachments, or reply-chain hijacking.
- For your own mailboxes: identity-provider sign-in anomalies and inbox rules that hide or forward mail (T1564.008 rule, T1114.003 guidance).
