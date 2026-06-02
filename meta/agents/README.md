# The maintenance pipeline (Scout → Writer → Visualizer)

The RTMLink help center is kept **complete** and **current** by three focused agents, each paired with one manual, handing off through `meta/registry.yaml` (the shared work queue). This folder holds their prompts — point a scheduled run at the relevant one.

## The conveyor belt

The registry's `status` field is the shared state. Work flows one way:

1. App code changes, or a coverage gap appears.
2. **Scout** flags affected articles `stale` and proposes new ones as `todo` → opens a *registry-diff* PR. (No prose, no screenshots.)
3. **Human gate 1** — a person reviews the proposed queue and **prioritizes** what's worth writing (the SCOPE-AND-TMI judgment).
4. **Writer** takes a prioritized `todo`/`stale` item → researches against `origin/main` → writes → sets `status: review` and *registers* the screenshots the article needs → opens a *prose* PR.
5. **Visualizer** captures the registered screenshots from the demo clinic → embeds them → opens a *screenshots* PR.
6. **Human gate 2** — every Writer/Visualizer PR is reviewed → merge to `main` → GitBook publishes.

```
app change ─▶ SCOUT ─▶ registry(stale/todo) ─▶ [human prioritizes] ─▶ WRITER ─▶ status:review (+screenshots registered) ─▶ VISUALIZER ─▶ PNGs+embeds ─▶ [human PR] ─▶ published
```

| Agent | Prompt | Manual | Reads | Produces |
|-------|--------|--------|-------|----------|
| **Scout** | `scout.md` | `MAINTENANCE.md` | app `origin/main`, registry, `last-synced.json` | registry diffs (`stale`/`todo`) + optional stubs |
| **Writer** | `writer.md` | `AUTHORING-GUIDE.md` | a queued article's `sources`, the outline | the article + registry status + `SUMMARY.md` |
| **Visualizer** | `visualizer.md` | `SCREENSHOTS.md` | the registry `screenshots:` map | PNGs in `.gitbook/assets/` + article embeds |

## Two human gates
1. **After the Scout** — review the proposed queue and prioritize. Writers only pick up prioritized work. This is where scope control lives.
2. **At every PR** — Writer and Visualizer PRs are human-approved before merge. Healthcare content is never auto-published.

## Why three agents, not one
Triage is cheap and git-focused; writing requires *fresh, verified* code-reading (you can't hand a Writer pre-written prose and trust the labels); capture is a separate toolchain that touches production. Three focused prompts, each with one manual, beats one prompt juggling three jobs — and the Scout→Writer gate is exactly where a human should decide what's worth documenting.

## What each run's environment needs
- **All three:** this help repo **and** the `rtmlink` app checked out at `../`; `gh` authenticated; `git -C .. fetch origin main` access. All PRs target the help repo's **`main`** (merging publishes); run `gh pr create` from the help-repo root.
- **Visualizer additionally:** the screenshot harness available in the app (`php artisan help:screenshots` — must be merged + deployed), `DEMO_SCREENSHOT_PASSWORD` in the environment, and `ssh rtmlink-prod` for seeding demo data on prod.

## Scheduling
Each prompt is cadence-agnostic. A reasonable cadence: **Scout** after each app merge (or nightly); **Writer** on a slower backlog cadence or on-demand once a human has prioritized; **Visualizer** after Writers land articles that registered screenshots. Wire them with cron / the `schedule` skill — but a human still approves every PR.
