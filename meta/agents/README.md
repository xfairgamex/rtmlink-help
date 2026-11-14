# The maintenance pipeline (Maintainer → Visualizer)

The RTMLink help center is kept **complete** and **current** by two focused agents, handing off through `meta/registry.yaml` (the shared work queue). This folder holds their prompts — point a scheduled run at the relevant one.

> **History:** this used to be three agents — a Scout (triage), a Writer (prose), and a Visualizer (screenshots). The Scout and Writer have been **merged into the Maintainer**, which triages *and* writes in one human-gated PR. `scout.md` and `writer.md` are now pointer stubs; the live prompt is `maintainer.md`. See *Why two agents, not three* below.

## The conveyor belt

The registry's `status` field is the shared state. Work flows one way:

1. App code changes, or a coverage gap appears.
2. **Maintainer** diffs the app since `last-synced.json`, flags affected articles `stale` / proposes new ones `todo` (deciding scope with SCOPE-AND-TMI itself), **then writes the verified prose** for the highest-priority few, registers the screenshots each needs, advances the anchor, and opens — or rolls forward — **one** PR.
3. **Human gate** — a person reviews the finished articles + registry changes and merges to `main` → GitBook publishes.
4. **Visualizer** captures the registered/flagged screenshots from the demo clinic → embeds them → opens a *screenshots* PR → human review → merge.

```
app change ─▶ MAINTAINER ─▶ registry(stale/todo) + verified prose + screenshots registered ─▶ [human PR] ─▶ published
                                                                                              └▶ VISUALIZER ─▶ PNGs+embeds ─▶ [human PR] ─▶ published
```

| Agent | Prompt | Manuals | Reads | Produces |
|-------|--------|---------|-------|----------|
| **Maintainer** | `maintainer.md` | `MAINTENANCE.md` + `AUTHORING-GUIDE.md` | app `origin/main`, registry, `last-synced.json`, the outline | registry diffs (`stale`/`todo`) **and** the articles themselves + `SUMMARY.md` + screenshots registered |
| **Visualizer** | `visualizer.md` | `SCREENSHOTS.md` | the registry `screenshots:` map | PNGs in `.gitbook/assets/` + article embeds |

## One rolling PR, not a pile

The Maintainer keeps **at most one open PR** and each run *refreshes* it (re-diffing from the last merged anchor to today's `origin/main`) rather than exiting when a prior PR is still open. This is the lock that keeps two PRs from ever conflicting on `registry.yaml` + `last-synced.json`, and it's also what stops the backlog going stale: when a human finally gets to the PR, it reflects today's app, not a weeks-old window. Once a human starts reviewing (any review or comment), the PR is frozen so the diff doesn't shift under them; the next run after merge starts fresh. A per-run **in-flight cap** (default 5 articles in `review`) keeps the PR small enough to review in one sitting — the rest stay flagged and get written next cycle.

## The human gate
**Every PR is human-approved before merge.** Healthcare content is never auto-published. Merging the Maintainer's one PR *is* the point where a human both prioritizes (by choosing what to merge / send back) and verifies.

## Why two agents, not three
Triage and writing both read the same app code against `origin/main`, so running them as separate agents meant reading the code twice and gating twice — and the Scout→Writer human gate became a bottleneck where triage PRs waited unprioritized while the app sprinted ahead. Merging them removes a whole gate and PR cycle per fix: the Maintainer decides scope with SCOPE-AND-TMI and writes the result in one go, and a human reviews finished docs instead of a plan plus a draft. **Capture stays separate** — it's a different toolchain that touches production (the demo clinic) and carries PHI risk, so it keeps its own human-gated agent.

## What each run's environment needs
- **Both:** this help repo **and** the `rtmlink` app checked out at `../`; `gh` authenticated; `git -C .. fetch origin main` access. All PRs target the help repo's **`main`** (merging publishes); run `gh pr create` from the help-repo root.
- **Visualizer additionally:** the screenshot harness available in the app (`php artisan help:screenshots` — must be merged + deployed), `DEMO_SCREENSHOT_PASSWORD` in the environment, and `ssh rtmlink-prod` for seeding demo data on prod.

## Scheduling
Each prompt is cadence-agnostic. A reasonable cadence: **Maintainer** after each app merge (or nightly) — it self-limits via the one-rolling-PR lock and the in-flight cap, so a frequent cadence just keeps the open PR fresh rather than spawning new ones; **Visualizer** after the Maintainer lands articles that registered screenshots. Wire them with cron / the `schedule` skill — but a human still approves every PR.
