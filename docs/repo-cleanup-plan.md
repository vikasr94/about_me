# Repo cleanup plan (run after PR merge + your approval)

These repos overlap with the **5-repo** layout. Delete them only after you approve [the consolidation PR](https://github.com/vikasr94/about_me/pulls).

## Delete these 5 repos

| Repo | Reason |
|------|--------|
| `vikasr94/sql-product-case-studies` | → `product-analytics` |
| `vikasr94/marketplace-analytics` | → `product-analytics` |
| `vikasr94/experimentation-resources` | → `ab-testing-toolkit/docs/` |
| `vikasr94/measurement-infrastructure` | → split between toolkit / T&S |
| `vikasr94/ai-evaluation-frameworks` | → `trust-safety-measurement` |

## Commands (requires `delete_repo` scope)

```bash
gh auth refresh -h github.com -s delete_repo

for r in sql-product-case-studies marketplace-analytics experimentation-resources measurement-infrastructure ai-evaluation-frameworks; do
  gh repo delete "vikasr94/$r" --yes
done
```

Or delete each under **Settings → Danger zone** on GitHub.

## Keep these 6

- `about_me`
- `notebooks`
- `ab-testing-toolkit`
- `product-analytics`
- `trust-safety-measurement`
- `data-science-interview-prep`
