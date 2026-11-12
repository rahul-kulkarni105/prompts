# Agent instructions

This repo is a library of prompts. It has no code, build or tests. Follow these steps when adding or changing a prompt.

## Adding a prompt

1. Create one file per prompt at the repo root, named in `kebab-case` that describes the task (e.g. `find-implicit-state-machines.txt`).
   - Use `.txt` for short, single-paragraph prompts.
   - Use `.md` for long, structured specs with headings (`.txt` with Markdown inside is also fine; match nearby files).
2. Write the prompt so it works when pasted into a fresh agent session: state the goal, the constraints, and what to report back. Don't refer to this repo or to other prompts.
3. Add a row to the **Index** table in `README.md`:
   - Link the filename.
   - Pick a short category (reuse an existing one when it fits: Code analysis, Web performance, App build spec).
   - Write a one-sentence summary of what the prompt makes the agent do.
   - Keep the table sorted alphabetically by filename.
4. Commit with a message like `Add <short description> prompt`.

## Changing or removing a prompt

- Renaming or deleting a file means updating its row in the README index in the same commit.
- If a change alters what the prompt does, update its summary too.

## Formatting and checks

- Run `npm install` once after cloning. It installs Prettier and turns on the pre-commit hook in `.githooks/`.
- Run `npm run format` before committing. Prettier formats Markdown, JSON and YAML; `.txt` prompts are left as written. `.editorconfig` sets UTF-8, LF line endings and a final newline for every file.
- Run `npm run check` to run what CI and the pre-commit hook run: the Prettier check, plus `scripts/check-index.sh`, which fails if a prompt file is missing from the README index or the index links to a file that doesn't exist.
- Don't bypass the hook with `--no-verify`. Fix the problem instead.
- Prompts must not contain secrets, API keys, personal data or account names.
