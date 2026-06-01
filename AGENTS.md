# RTMLink Help Center — Agent Guide

**Start here.** This repo (`rtmlink-help`) is the **public help center** for RTMLink, synced to GitBook. Articles are written by AI agents that read the live RTMLink codebase so every instruction is accurate.

This repo is a **separate git repo nested inside the main `rtmlink` app** (the parent repo ignores it). That means the source of truth — the application code — is right above you at `../`. You read code from the parent app and write articles here.

> **Read the parent app from `origin/main`, never the working tree.** The help center documents *production* (live at rtmlink.com), and the app working tree is usually checked out on an unmerged feature branch. Run `git -C .. fetch origin main`, then read files with `git show origin/main:<path>`. Trusting `git rev-parse HEAD` once caused an article to document a milestone removal that wasn't live — see Golden rule #1.

---

## The two jobs

1. **Author** new help articles and keep the set complete.
2. **Maintain** — keep existing articles current as the app changes (see `meta/MAINTENANCE.md`).

---

## Golden rules (non-negotiable)

1. **The codebase is the source of truth — specifically the app's `main` branch (production).** Verify every UI label, field name, button, and navigation path against the actual code before you write it; never invent or guess UI text. **Read code from `origin/main`** (e.g. `git show origin/main:app/Filament/Clinic/Resources/PatientResource.php`), **never the working tree or `git rev-parse HEAD`** — the parent app is usually on an unmerged feature branch, and documenting unshipped UI ships lies to clinics. Run `git -C .. fetch origin main` first.
2. **Audience = clinic staff, not developers.** No technical jargon — never write "Filament", "Livewire", "Eloquent", "migration", "tenant", "Blade", etc.
3. **Screenshots come from the demo clinic only** (`demo.rtmlink.com` — the production demo clinic). **NEVER** screenshot the real Tula clinic or any real patient data — that would expose PHI. **Never use `.test` (local dev) addresses in published guides — the live site is `rtmlink.com`.**
4. **Don't document what isn't built.** If the outline lists a feature you can't find in the code, skip it and note it in the registry.
5. **Respect scope / TMI rules** in `meta/SCOPE-AND-TMI.md`. Not everything deserves an article, a screenshot, or even a sentence.
6. **State lives in `meta/registry.yaml`.** Update each article's `status` as you work — this is how the next agent knows exactly where we left off.
7. **Human review gate.** Changes ship via PR for human approval. Never treat healthcare content as correct without a human check.

---

## Read order

1. **This file** — orientation + rules.
2. **`meta/AUTHORING-GUIDE.md`** — how to research the code and write (style, template, 7-step process, screenshots).
3. **`meta/SCOPE-AND-TMI.md`** — what's worth documenting (and what to skip).
4. **`meta/CONTENT-OUTLINE.md`** — what each article should cover.
5. **`meta/registry.yaml`** — the work list + status + screenshot map. **The keystone.**
6. **`meta/MAINTENANCE.md`** — only when running the recurring "update docs after app changes" loop.

---

## Where things live

```
rtmlink-help/                     ← YOU ARE HERE (separate git repo)
├── AGENTS.md                     ← this file
├── README.md                     ← help center home page (published)
├── SUMMARY.md                    ← GitBook navigation (published articles only)
├── .gitbook.yaml                 ← GitBook publish config
├── .gitbook/assets/<section>/    ← screenshots (referenced by articles)
├── meta/                         ← instructions + state (NOT published)
│   ├── AUTHORING-GUIDE.md
│   ├── CONTENT-OUTLINE.md
│   ├── SCOPE-AND-TMI.md
│   ├── MAINTENANCE.md
│   ├── registry.yaml             ← articles + screenshots + status
│   └── last-synced.json          ← app commit the docs were last reconciled to
└── getting-started/ patients/ episodes/ surveys/ ...   ← article folders

../                               ← the RTMLink app (READ from origin/main for accuracy; never edit from here)
├── app/Filament/Clinic/          ← clinic-staff UI (resources, pages, widgets)
├── app/Livewire/Patient/         ← patient-facing UI (survey form, exercises)
├── app/Models/                   ← data + business rules
└── docs/                         ← original specs/blueprints (deep reference only)
```

---

## Authoring workflow (one article)

1. Pick the next article from `meta/registry.yaml` with `status: todo` (follow the priority order).
2. Set its `status: drafting`.
3. Read the files in that article's `sources` (the AUTHORING-GUIDE's 7-step process).
4. Check `meta/SCOPE-AND-TMI.md` — confirm what's worth including.
5. Write the article using the template and style in `meta/AUTHORING-GUIDE.md`.
6. For each screenshot the article needs: add/confirm an entry in the registry `screenshots` map and reference its output path in the article.
7. Run the screenshot harness (see AUTHORING-GUIDE → Screenshots) to generate images.
8. Run the quality checklist. Set `status: review` and `last_reviewed_commit` to **production HEAD** (`git -C .. rev-parse origin/main`), not the working-tree HEAD.
9. Update `SUMMARY.md` if the article is new.

---

## Publish flow

Edit markdown here → push to `main` → GitBook auto-syncs → live at **help.rtmlink.com**.

Only files listed in `SUMMARY.md` become published pages. The `meta/` folder is intentionally kept out of `SUMMARY.md` so it never appears on the public site.
