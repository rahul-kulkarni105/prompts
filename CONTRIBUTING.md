# Contributing

1. Run `npm install` once (installs Prettier and the pre-commit hook).
2. Add your prompt as a new `kebab-case.txt` (or `.md` for long structured specs) file at the repo root.
3. Add a row for it to the Index table in [README.md](README.md), sorted by filename.
4. Run `npm run format`, then open a pull request, or commit directly if you own the repo.

Using an AI agent? Just ask it to "add this prompt to the repo"; it will read [AGENTS.md](AGENTS.md) and follow the same steps.

Keep prompts self-contained and free of secrets or personal information.
