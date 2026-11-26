# T1090.004 - Proxy: Domain Fronting

- **Tactic(s):** Command And Control
- **ATT&CK link:** https://attack.mitre.org/techniques/T1090/004/
- **Platforms:** Linux, macOS, Windows, ESXi

## Summary
Adversaries may take advantage of routing schemes in Content Delivery Networks (CDNs) and other services which host multiple domains to obfuscate the intended destination of HTTPS traffic or traffic tunneled through HTTPS.

## Status: guidance only
Domain fronting hides the real destination behind a CDN; the outer TLS SNI and inner HTTP Host header differ.

## How to detect it
- TLS-inspecting proxies: requests where SNI and Host header do not match.
- Many CDNs now block domain fronting, reducing the risk.
