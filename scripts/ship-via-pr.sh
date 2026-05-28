#!/usr/bin/env bash
# Push branch and open PR. Does NOT merge — merge after you approve on GitHub.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BRANCH="${1:-$(git -C "$REPO_DIR" branch --show-current)}"
BASE="${2:-main}"
TITLE="${3:-Update from ${BRANCH}}"

cd "$REPO_DIR"

if ! command -v gh >/dev/null 2>&1; then
  echo "Install GitHub CLI: https://cli.github.com/"
  exit 1
fi

git push -u origin "$BRANCH"

PR_URL=$(gh pr create --base "$BASE" --head "$BRANCH" --title "$TITLE" --body "$(cat <<EOF
## Summary
Changes from branch \`${BRANCH}\`.

## Test plan
- [ ] Review diff on GitHub
- [ ] Approve and merge when ready
EOF
)")

echo "PR created: $PR_URL"
echo "Review and merge when you approve (this script does not auto-merge)."
