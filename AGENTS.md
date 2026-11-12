# Agent instructions

This repo is a library of prompts. It has no code, dependencies or build. Prompts live in `prompts/`; everything else is docs and a small check script.

## Adding a prompt

1. Create one file per prompt in `prompts/`, named in `kebab-case` after the task (e.g. `prompts/find-implicit-state-machines.txt`).
   - Use `.txt` for short prompts.
   - Use `.md` for long, structured specs with headings (`.txt` with Markdown inside is also fine; match nearby files).
   - End the file with a newline; no trailing spaces (see `.editorconfig`).
2. Write the prompt so it works when pasted into a fresh agent session: state the goal, the constraints, and what to report back. Don't refer to this repo or to other prompts.
3. Add a row to the **Index** table in `README.md`:
   - Link text is the filename; link target is `prompts/<filename>`.
   - Pick a short category (reuse an existing one when it fits: Code analysis, Web performance, App build spec).
   - Write a one-sentence summary of what the prompt makes the agent do.
   - Keep rows sorted alphabetically by filename, one line each, no column padding.
4. Commit with a message like `Add <short description> prompt`.

## Changing or removing a prompt

- Renaming or deleting a file means updating its index row in the same commit.
- If a change alters what the prompt does, update its summary too.

## Checks

- Run `sh scripts/check-index.sh` before committing. It fails if a file in `prompts/` is missing from the README index, or an index row links to a file that doesn't exist. CI runs the same script.
- The pre-commit hook runs it too, once enabled with `git config core.hooksPath .githooks`. Don't bypass it with `--no-verify`; fix the index instead.
- Prompts must not contain secrets, API keys, personal data or account names.
