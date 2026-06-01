# Scope & TMI — What's Worth Documenting

> The hard part of a help center isn't writing — it's **deciding what *not* to write.** A clinic user wants to finish a task, not read a manual. This file is the filter. Apply it *before* drafting (see `meta/AUTHORING-GUIDE.md` → the authoring loop, step 2).

---

## The one question

> **Can a clinic user *do something* with this, and is it *not obvious* from the screen itself?**

If **yes** → document it (at the right depth, below).
If **no** → skip it. Skipping is the default. The app is large; the help center should be small and sharp.

"Clinic user" = Clinic Owner, Provider, Staff, Billing Staff, Auditor. **Not** super-admins. If only a super-admin sees it (the **Platform** panel, `app/Filament/Platform/`), it does not belong in this help center at all.

---

## Three tiers of depth

Decide *how much* a thing gets, not just whether:

| Tier | Gets… | Use when… | Example |
|------|-------|-----------|---------|
| **1 — Article** | Its own page | It's a distinct task a user sets out to accomplish | "Enrolling a patient," "Approving a claim," "Setting up check-in" |
| **2 — A line or section** | A sentence/bullet inside a related article | It's a field, option, or rule whose *meaning or consequence* isn't obvious from its label | "Setting a survey as the clinic **default** auto-assigns it to new episodes," "Claims are never dated in the future" |
| **3 — Nothing** | (skipped) | It's obvious, internal, super-admin-only, or volatile | A **Save** button; how a queue job is scheduled |

When in doubt between two tiers, **pick the shallower one.** You can always deepen later; bloat is harder to remove than to avoid.

---

## The "should I document this field?" test

Document a field **only if** its meaning or constraint isn't obvious from its label:

- **Skip** (Tier 3): `First name`, `Last name`, `Email`, `Phone`, `Save`, `Cancel`. The label *is* the documentation.
- **Document** (Tier 2): a field with a hidden consequence, a non-obvious constraint, or a clinical/billing meaning:
  - **SMS consent** — gates whether you can text the patient at all.
  - **Default survey** — auto-assigns to every new episode.
  - **Frequency** — what "every other day" / "weekdays" actually means for send timing.
  - **98975 minimum interaction days** — a clinic preference that changes when a billing code appears.
  - **Flag severity (low/medium/high)** — drives the "Needs Attention" surfacing.

Rule of thumb: if you'd have to read the code to know what a field *does*, the user would too — so write the one line that saves them.

---

## Always skip (Tier 3)

- **Internal mechanics:** background jobs, queues, schedulers, database tables, webhooks, tokens-as-implementation, caching, multi-tenancy plumbing. Users never act on these. (Exception: a *user-visible consequence* may earn a Tier-2 line — e.g. "summaries are prepared overnight, so they're ready each morning" — without ever naming a "job.")
- **Super-admin / Platform features:** anything in `app/Filament/Platform/` or gated to `super_admin`. Out of scope, full stop.
- **Obvious UI:** standard buttons and inputs whose label says it all.
- **Volatile/experimental surfaces:** features behind flags, half-built screens, anything noted as in-progress in the app. Documenting these guarantees rework. If the code says it isn't finished, flag the article `status: blocked` in `meta/registry.yaml`.
- **Internal identifiers:** external IDs, system keys, raw status codes — unless the user genuinely sees and acts on them.
- **Exhaustive enumerations:** don't list all 9 EMR options or every activity type just to be complete; show the user how to pick, and give examples.

---

## Screenshots: a separate, stricter filter

Screenshots are expensive to keep current (every UI change can stale them) and carry **PHI risk**. Earn each one.

**Screenshot only when ALL of these hold:**
1. **High value** — the image genuinely speeds comprehension (a dashboard, a primary list view, a key form, a screen where "where do I click?" is the real question).
2. **Stable** — the screen isn't changing release-to-release.
3. **Safe** — it can be produced from the **demo** clinic with fake `[DEMO]` data.

**Don't screenshot:** every field, every modal, every confirmation dialog, settings toggles, error states, or anything you'd have to re-shoot constantly. Prose ages better than pixels.

> **PHI — non-negotiable.** Screenshots come from the **demo clinic only** (`demo.rtmlink.com`). **NEVER** the real Tula clinic (`tula.rtmlink.com`) or any real patient. If a screen can't be shown with demo data, it doesn't get a screenshot. See `AGENTS.md` golden rules.

A practical target: **0–2 screenshots per article.** Many good articles need zero.

---

## TMI examples (quick reference)

| Topic | Verdict | Why |
|-------|---------|-----|
| How to enroll a patient | **Article** | A core task with multiple steps |
| What an "interaction day" is | **Tier 2 section** | Non-obvious, billing-critical; explain once, link to it |
| A completed exercise counts as an interaction day | **Tier 2 line** | Affects billing; users should know |
| The **Save** button on a form | **Skip** | Obvious |
| `First name` field | **Skip** | Label is self-explanatory |
| SMS consent toggle | **Tier 2** | Hidden consequence (gates messaging) |
| How the billing-window-close job is scheduled | **Skip** | Internal mechanic; user takes no action |
| Claims are never future-dated | **Tier 2 line** | Reassures billing staff; one sentence, not a section |
| The super-admin Platform dashboard | **Skip** | Not a clinic-user feature |
| Per-CPT reimbursement rate settings | **Article/section** | A real configuration task for billing staff |
| Every available activity-type value | **Skip the full list** | Show how to choose + a few examples instead |
| Dashboard overview | **Article + 1 screenshot** | High-value, stable, demo-safe |
| A delete-confirmation modal | **Skip screenshot** | Low value, volatile |

---

## Clinic judgment calls (defaults — refine over time)

These are reasonable defaults; the clinic can tune them as the help center matures. Recording a decision here keeps future authors consistent.

- **Audience priority:** front-desk and provider day-to-day tasks first; deep billing/admin configuration second; compliance/reference last. (Matches the registry priority order.)
- **Troubleshooting depth:** cover the handful of issues that actually generate support questions (delivery failures, expired links, "can't create a second active episode"). Don't pre-emptively document every possible error.
- **Reference pages (glossary, CPT codes, role matrix):** worth maintaining because they're linked from many articles and reduce repetition — but keep them factual and short.
- **When genuinely unsure:** write *less*, set the article/section note in `meta/registry.yaml`, and let the human PR review decide. Under-writing is cheap to fix; over-writing erodes trust and ages badly.
