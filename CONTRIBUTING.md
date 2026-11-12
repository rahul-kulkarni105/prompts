# Contributing

1. Once per clone, turn on the pre-commit hook: `git config core.hooksPath .githooks`
2. Add your prompt as a `kebab-case.txt` (or `.md` for long structured specs) file in [prompts/](prompts/).
3. Add a row for it to the Index table in [README.md](README.md), sorted by filename.
4. Commit. The hook checks the index; you can also run `sh scripts/check-index.sh` yourself.

Using an AI agent? Just ask it to "add this prompt to the repo"; it will read [AGENTS.md](AGENTS.md) and follow the same steps.

Keep prompts self-contained and free of secrets or personal information.
