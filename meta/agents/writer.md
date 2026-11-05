# Writer — merged into the Maintainer

> **This agent no longer runs on its own.** The old **Writer** (prose-only, picking up items a Scout had already triaged and a human had prioritized) and the old **Scout** (triage-only) have been merged into a single agent, the **Maintainer**, which triages *and* writes in one reviewable, human-gated PR. See **`meta/agents/maintainer.md`**.

## What carried over
The writing craft is unchanged and still lives in **`meta/AUTHORING-GUIDE.md`** (the 7-step research process, voice/jargon rules, the article template, the gotchas, the quality checklist) — the Maintainer follows it verbatim for the writing half of each run. So did the Writer's safeguards, now folded into the Maintainer:
- **Verify every bold UI label against `origin/main`** before writing it — never guess, never the working tree.
- **Backpressure / reviewability:** the Writer stopped when 3+ Writer PRs were open; the Maintainer instead caps how many freshly-written articles ride its **one rolling PR** (default 5 in `review` at once) so the PR stays reviewable, and leaves the rest flagged `stale`/`todo` for the next run.
- **No duplicates:** there is now a single rolling Maintainer PR, so the old per-article duplicate check is subsumed by the one-open-PR lock.

## If a runner still points here
Update the scheduled routine's stored prompt to read and follow `meta/agents/maintainer.md`.

Screenshots remain separate: see `meta/agents/visualizer.md`.
