# prompts

A personal library of reusable prompts for AI coding agents (Claude Code, Codex, Cursor, etc.). Each prompt is a plain-text file you can paste into an agent session or pipe straight in.

## Index

| Prompt                                                               | Category        | Summary                                                                                        |
| -------------------------------------------------------------------- | --------------- | ---------------------------------------------------------------------------------------------- |
| [find-implicit-state-machines.txt](find-implicit-state-machines.txt) | Code analysis   | One-liner that asks the agent to find implicit state machines hiding in an app's code.         |
| [font-optimization.txt](font-optimization.txt)                       | Web performance | Subset and split web fonts to load faster, with pixel-diff proof that rendering didn't change. |
| [options-screener-app.txt](options-screener-app.txt)                 | App build spec  | Full build spec for a local-first "Put Spread Weekly Screener" options research dashboard.     |

<!-- Keep this table sorted alphabetically by filename. Add a row for every new prompt. -->

## Using a prompt

Copy the file's contents into your agent, or pass it directly:

```sh
claude "$(cat font-optimization.txt)"
```

Run prompts from inside the project you want the agent to work on, not from this repo.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). AI agents should follow [AGENTS.md](AGENTS.md).
