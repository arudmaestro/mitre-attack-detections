# T1534 - Internal Spearphishing

- **Tactic(s):** Lateral Movement
- **ATT&CK link:** https://attack.mitre.org/techniques/T1534/
- **Platforms:** Linux, macOS, Office Suite, SaaS, Windows

## Summary
After they already have access to accounts or systems within the environment, adversaries may use internal spearphishing to gain access to additional information or compromise other users within the same organization.

## Status: guidance only
Internal spearphishing is sent from a compromised internal mailbox or chat account; the messages are ordinary mail or chat events.

## How to detect it
- Mail logs (EmailEvents / message trace): an internal sender suddenly mailing many colleagues with links or attachments, especially after a suspicious sign-in.
- Defender for Office 365 / mail security internal-mail scanning; Teams/Slack messages with links from newly compromised accounts.
