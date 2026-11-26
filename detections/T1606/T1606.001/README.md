# T1606.001 - Forge Web Credentials: Web Cookies

- **Tactic(s):** Credential Access
- **ATT&CK link:** https://attack.mitre.org/techniques/T1606/001/
- **Platforms:** Linux, macOS, Windows, SaaS, IaaS

## Summary
Adversaries may forge web cookies that can be used to gain access to web applications or Internet services.

## Status: guidance only
Forged web cookies are made offline with a stolen signing secret and used from the attacker's browser.

## How to detect it
- Application and identity-provider logs: sessions with no matching sign-in, cookies with unusual lifetimes or claims, and one session used from several IP addresses.
- Protect and rotate cookie signing secrets (web application keys, machine keys).
