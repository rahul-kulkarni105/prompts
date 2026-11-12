#!/bin/sh
# Every prompt file at the repo root must be linked from the README index,
# and every index link must point to a file that exists.
cd "$(dirname "$0")/.." || exit 1
status=0
for f in *.txt *.md; do
  [ -e "$f" ] || continue
  case "$f" in README.md | AGENTS.md | CLAUDE.md | CONTRIBUTING.md) continue ;; esac
  grep -q "]($f)" README.md || { echo "missing from README index: $f"; status=1; }
done
for f in $(sed -n 's/^| \[[^]]*\](\([^)]*\)).*/\1/p' README.md); do
  [ -e "$f" ] || { echo "README index links to missing file: $f"; status=1; }
done
exit $status
