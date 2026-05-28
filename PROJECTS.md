# Project folders — priorities

Use this repo as a **monorepo workspace** until a topic is mature enough to become its own GitHub repo (e.g. `vikasr94/ab-testing-toolkit`).

## P0 — start here

| Folder | Why P0 |
|--------|--------|
| [`notebooks/`](notebooks/) | Active learning (`python_ds_basics`, practice notebooks) |
| [`ab-testing-toolkit/`](ab-testing-toolkit/) | Core brand: experimentation, CUPED, SRM, power analysis |
| [`sql-product-case-studies/`](sql-product-case-studies/) | Portfolio-ready SQL + product analytics |
| [`data-science-interview-prep/`](data-science-interview-prep/) | Interview loops: SQL, pandas, stats, metrics |

## P1 — next wave

| Folder | Why P1 |
|--------|--------|
| [`trust-safety-measurement/`](trust-safety-measurement/) | T&S metrics, harm prevalence, classifier eval |
| [`marketplace-analytics/`](marketplace-analytics/) | Supply/demand, funnels, marketplace imbalance |
| [`ai-evaluation-frameworks/`](ai-evaluation-frameworks/) | LLM eval, safety measurement, benchmarking |
| [`experimentation-resources/`](experimentation-resources/) | Curated roadmaps & links (like A/B learning paths) |
| [`measurement-infrastructure/`](measurement-infrastructure/) | Metric design, pipelines, ecosystem health |
| [`product-analytics/`](product-analytics/) | Growth, retention, segmentation case studies |

## Already in repo

| Folder | Role |
|--------|------|
| [`docs/`](docs/) | Profile guides, notes |
| [`scripts/`](scripts/) | `ship-via-pr.sh` and automation |

## Workflow

1. Build in the matching folder here (or locally in `automation-test/`, then copy when ready).
2. When a folder is substantial, spin it out to `vikasr94/<repo-name>` and pin on your profile.
