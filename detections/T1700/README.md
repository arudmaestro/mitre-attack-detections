# T1700 - AI-Enabled Exfiltration

- **Tactic(s):** Exfiltration
- **ATT&CK link:** https://attack.mitre.org/techniques/T1700/
- **Platforms:** Windows, SaaS

## Summary
Adversaries may utilize Direct Prompt Injection, Indirect Prompt Injection or other methods to instruct enterprise AI agents to exfiltrate data.

## Status: guidance only
AI and LLM techniques act on AI assistants, agents and their prompts; their logs (prompt / response audit logs, agent tool-call logs) are not data sources of this project yet.

## How to detect it
- Log prompts, retrieved content and tool calls of enterprise AI agents (e.g. Microsoft Purview audit for Copilot, your agent platform's audit log) and review them for instructions that came from documents, mails or web pages.
- Limit what agents can do: least-privilege connectors, human approval for sending data out or changing systems, and content filtering for prompt-injection patterns.
- DLP on AI agent outputs and on the channels agents can send to (mail, chat, web requests); alert on agents sending data to new external destinations.
