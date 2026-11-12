#!/bin/sh
# Every file in prompts/ must be linked from the README index,
# and every index link must point to a file that exists.
cd "$(dirname "$0")/.." || exit 1
status=0
for f in prompts/*; do
  [ -f "$f" ] || continue
  grep -qF "]($f)" README.md || { echo "missing from README index: $f"; status=1; }
done
for f in $(sed -n 's/^| *\[[^]]*\](\([^)]*\)).*/\1/p' README.md); do
  [ -e "$f" ] || { echo "README index links to missing file: $f"; status=1; }
done
exit $status
