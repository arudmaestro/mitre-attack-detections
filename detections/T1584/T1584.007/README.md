# T1584.007 - Compromise Infrastructure: Serverless

- **Tactic(s):** Resource Development
- **ATT&CK link:** https://attack.mitre.org/techniques/T1584/007/
- **Platforms:** PRE

## Summary
Adversaries may compromise serverless cloud infrastructure, such as Cloudflare Workers, AWS Lambda functions, or Google Apps Scripts, that can be used during targeting.

## Status: guidance only
This is a Resource Development technique: it happens on infrastructure or accounts the adversary controls, outside your logs.

## How to detect it
- Threat intelligence on the adversary's infrastructure and tooling (domains, IP ranges, certificates, file hashes) and blocking known indicators.
- Proxy / DNS logs for connections to serverless domains (*.workers.dev, *.lambda-url.*.on.aws, *.azurewebsites.net, *.cloudfunctions.net) from servers and unusual processes.
- For your own cloud accounts: CloudTrail for new or changed Lambda functions and function URLs (CreateFunctionUrlConfig) by unusual identities.
