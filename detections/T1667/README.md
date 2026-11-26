# T1667 - Email Bombing

- **Tactic(s):** Impact
- **ATT&CK link:** https://attack.mitre.org/techniques/T1667/
- **Platforms:** Linux, Office Suite, Windows, macOS

## Summary
Adversaries may flood targeted email addresses with an overwhelming volume of messages.

## Status: guidance only
Email bombing floods mailboxes with sign-up and spam mail; it is seen in mail logs and is often followed by a fake helpdesk call.

## How to detect it
- Mail logs: sudden spike of inbound mail (often newsletter confirmations) to one user.
- Watch for what follows: Teams / phone contact from 'IT support' and remote-access tools installed by the user (T1219 rules, Quick Assist sessions).
