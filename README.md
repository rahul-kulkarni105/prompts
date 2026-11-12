# prompts

A personal library of reusable prompts for AI coding agents (Claude Code, Codex, Cursor, etc.). Each prompt is a plain-text file in [prompts/](prompts/) that you can paste into an agent session or pipe straight in.

## Index

| Prompt | Category | Summary |
| --- | --- | --- |
| [find-implicit-state-machines.txt](prompts/find-implicit-state-machines.txt) | Code analysis | One-liner that asks the agent to find implicit state machines hiding in an app's code. |
| [font-optimization.txt](prompts/font-optimization.txt) | Web performance | Subset and split web fonts to load faster, with pixel-diff proof that rendering didn't change. |
| [options-screener-app.txt](prompts/options-screener-app.txt) | App build spec | Full build spec for a local-first "Put Spread Weekly Screener" options research dashboard. |

<!-- Keep this table sorted alphabetically by filename. Add a row for every file in prompts/. -->

## Using a prompt

From inside the project you want the agent to work on, copy the prompt in or pass it directly:

```sh
claude "$(cat /path/to/this/repo/prompts/font-optimization.txt)"
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). AI agents should follow [AGENTS.md](AGENTS.md).
