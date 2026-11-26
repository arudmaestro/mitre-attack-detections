# T1598.002 - Phishing for Information: Spearphishing Attachment

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1598/002/
- **Platforms:** PRE

## Summary
Adversaries may send spearphishing messages with a malicious attachment to elicit sensitive information that can be used during targeting.

## Status: guidance only
Attachments that collect information (forms, documents asking for credentials) are delivered by mail.

## How to detect it
- Mail security (Defender for Office 365, mail gateway): credential-harvesting links, look-alike sender domains and messages asking for credentials or sensitive data.
- Identity-provider sign-in logs: sign-ins from new locations soon after users click phishing links; phishing-resistant MFA (FIDO2) stops replayed credentials.
- User reporting: a 'report phishing' button and quick removal of reported campaigns from all mailboxes.
