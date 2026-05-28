# Project repos — final set (5 + about_me)

Topic repos sit **next to** [`about_me`](https://github.com/vikasr94/about_me). Overlapping scaffolds are listed for removal in [docs/repo-cleanup-plan.md](docs/repo-cleanup-plan.md) (after you approve the PR).

## P0 — start here

| Repo | Focus |
|------|--------|
| [notebooks](https://github.com/vikasr94/notebooks) | Learning notebooks (Python, pandas, practice) |
| [ab-testing-toolkit](https://github.com/vikasr94/ab-testing-toolkit) | CUPED, SRM, power analysis, diagnostics; add `docs/` for roadmaps |
| [product-analytics](https://github.com/vikasr94/product-analytics) | SQL case studies, funnels, retention, marketplace examples |

## P1 — next

| Repo | Focus |
|------|--------|
| [trust-safety-measurement](https://github.com/vikasr94/trust-safety-measurement) | T&S metrics, harm prevalence, AI safety / eval (when ready) |
| [data-science-interview-prep](https://github.com/vikasr94/data-science-interview-prep) | Interview drills, cheatsheets (or fold into `notebooks` later) |

## This repo (`about_me`)

| Path | Role |
|------|------|
| [docs/](docs/) | Profile guides, picker, cleanup plan |
| [scripts/](scripts/) | PR workflow helpers |

## Layout on GitHub (target)

```
vikasr94/
├── about_me/
├── notebooks/                   P0
├── ab-testing-toolkit/          P0
├── product-analytics/           P0
├── trust-safety-measurement/    P1
└── data-science-interview-prep/ P1
```

## Merged into the 5 (do not keep as separate repos)

| Remove | Absorbed by |
|--------|-------------|
| `sql-product-case-studies` | `product-analytics` |
| `marketplace-analytics` | `product-analytics` (e.g. `marketplace/` folder) |
| `experimentation-resources` | `ab-testing-toolkit/docs/` |
| `measurement-infrastructure` | `ab-testing-toolkit` or `trust-safety-measurement` |
| `ai-evaluation-frameworks` | `trust-safety-measurement` (when built) |
