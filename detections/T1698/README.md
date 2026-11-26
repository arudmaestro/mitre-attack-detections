# T1698 - Indirect Prompt Injection

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1698/
- **Platforms:** Windows, SaaS

## Summary
Adversaries may deliver malicious prompts to an LLM indirectly by embedding the prompts in content that the adversary expects may be processed by an LLM.

## Status: guidance only
AI and LLM techniques act on AI assistants, agents and their prompts; their logs (prompt / response audit logs, agent tool-call logs) are not data sources of this project yet.

## How to detect it
- Log prompts, retrieved content and tool calls of enterprise AI agents (e.g. Microsoft Purview audit for Copilot, your agent platform's audit log) and review them for instructions that came from documents, mails or web pages.
- Limit what agents can do: least-privilege connectors, human approval for sending data out or changing systems, and content filtering for prompt-injection patterns.
