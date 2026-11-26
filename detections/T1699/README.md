# T1699 - Direct Prompt Injection

- **Tactic(s):** Execution
- **ATT&CK link:** https://attack.mitre.org/techniques/T1699/
- **Platforms:** Windows, SaaS

## Summary
Adversaries may input malicious prompts directly into an LLM’s user interface.

## Status: guidance only
AI and LLM techniques act on AI assistants, agents and their prompts; their logs (prompt / response audit logs, agent tool-call logs) are not data sources of this project yet.

## How to detect it
- Log prompts, retrieved content and tool calls of enterprise AI agents (e.g. Microsoft Purview audit for Copilot, your agent platform's audit log) and review them for instructions that came from documents, mails or web pages.
- Limit what agents can do: least-privilege connectors, human approval for sending data out or changing systems, and content filtering for prompt-injection patterns.
- Rate-limit and review users or accounts that repeatedly trigger AI safety filters.
