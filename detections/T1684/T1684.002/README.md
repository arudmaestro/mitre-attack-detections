# T1684.002 - Social Engineering: Email Spoofing

- **Tactic(s):** Stealth
- **ATT&CK link:** https://attack.mitre.org/techniques/T1684/002/
- **Platforms:** Linux, macOS, Office Suite, Windows

## Summary
Adversaries may fake, or spoof, a sender’s identity by modifying the value of relevant email headers in order to establish contact with victims under false pretenses.

## Status: guidance only
Email spoofing forges the sender address; it is decided by mail authentication at the receiving mail server.

## How to detect it
- Publish SPF, DKIM and DMARC (p=reject) for your domains, and enforce DMARC on inbound mail; review DMARC aggregate reports for spoofing of your domains.
