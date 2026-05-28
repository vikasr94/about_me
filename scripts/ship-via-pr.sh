#!/usr/bin/env bash
# Push branch, open PR, and merge into main. Requires: gh auth login
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
- [ ] README renders correctly on GitHub
EOF
)")

echo "PR created: $PR_URL"
gh pr merge --merge --delete-branch
echo "Merged and branch deleted."
