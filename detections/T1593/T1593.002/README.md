# T1593.002 - Search Open Websites/Domains: Search Engines

- **Tactic(s):** Reconnaissance
- **ATT&CK link:** https://attack.mitre.org/techniques/T1593/002/
- **Platforms:** PRE

## Summary
Adversaries may use search engines to collect information about victims that can be used during targeting.

## Status: guidance only
This is a Reconnaissance technique: it uses public sources or the adversary's own systems, so it leaves little or nothing in your logs.

## How to detect it
- Reduce what is exposed: review what your public websites, DNS records, job postings and employee profiles reveal, and remove what attackers do not need.
- Check what search engines index for your domains (site: searches for documents, login pages and directory listings) and remove what should not be public.
