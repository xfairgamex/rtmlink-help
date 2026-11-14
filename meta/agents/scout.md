# Scout — merged into the Maintainer

> **This agent no longer runs on its own.** The old **Scout** (triage-only: flag `stale`/`todo`, no prose) and the old **Writer** (prose-only) have been merged into a single agent, the **Maintainer**, which triages *and* writes verified prose in one reviewable, human-gated PR. See **`meta/agents/maintainer.md`**.

## Why the merge
The three-agent split (Scout → human prioritizes → Writer → human reviews → Visualizer) put two human gates in front of every doc fix, so triage PRs piled up unprioritized while the app moved faster than they could be cleared. The Maintainer collapses triage and writing into one gate (it decides scope with `SCOPE-AND-TMI` itself and writes the result), and keeps the queue current with **one rolling PR** that each run refreshes instead of exiting when a prior PR is still open. The human PR gate is unchanged — healthcare content is still never auto-published.

## If a runner still points here
Update the scheduled routine's stored prompt to read and follow `meta/agents/maintainer.md`, and drop the old "triage only / no prose" hard limit. The triage procedure (diff window, ignore-list, coverage census, advancing `last-synced.json`, the one-open-PR lock) lives on in the Maintainer, now followed by the writing half.

Screenshots remain separate: see `meta/agents/visualizer.md`.
