# Maintenance — Keeping the Help Center Current

> This is the **recurring update loop**. The app changes constantly; the help center must follow. Run this whenever you want to reconcile the docs with new app work (the user schedules it — e.g. nightly, or after each merged PR batch).
>
> **The premise:** every article in `meta/registry.yaml` declares the app code it `sources` from. When that code changes, the article is suspect. This loop turns "the app changed" into "*these specific articles* changed and here's the PR."

---

## The loop at a glance

```
last-synced.json ──▶ git diff the app since that commit
        │                       │
        │                       ▼
        │            changed file paths
        │                       │
        ▼                       ▼
  for each article ◀── match paths against article.sources globs
        │
        ├─ matched  → status: stale → re-read code, rewrite, re-shoot → status: review
        ├─ a new user-facing feature with no article → propose + write a new article
        └─ a removed feature → archive/delete its article
        │
        ▼
  open ONE PR (target: dev) ──▶ human review ──▶ merge
        │
        ▼
  bump last-synced.json to the reconciled origin/main commit   (only after merge)
```

**Golden rule (non-negotiable):** this loop ends at a **PR for human review**. Healthcare content is never auto-published. Never push to `main`/`dev` directly; never self-merge. See `../AGENTS.md`.

---

## Where you run

Run all commands from the **`rtmlink-help/` repo root**. The app is the parent directory, so app git commands use `git -C ..`.

```bash
# sanity check you're in the right place
test -f meta/registry.yaml && echo "in rtmlink-help ✓"
git -C .. rev-parse --show-toplevel    # should print the RTMLink app path
```

> If your shell starts in the app root instead, `cd rtmlink-help` first. Everything below assumes help-repo-root.

---

## Step 0 — Orient

Read these before touching anything (they define *how* and *whether* to write):

1. `../AGENTS.md` — golden rules.
2. `meta/AUTHORING-GUIDE.md` — how to research code + the writing craft.
3. `meta/SCOPE-AND-TMI.md` — whether a change even deserves a doc edit.
4. `meta/registry.yaml` — the work list + every article's `sources`.

Then establish the two commits the whole loop hinges on — **always against `main` (production), never the checked-out working tree**:

```bash
# The help center documents PRODUCTION = the app's `main` branch (live at rtmlink.com).
# The app working tree is usually on an unmerged feature branch, so HEAD is NOT the target.
git -C .. fetch origin main --quiet
TARGET=$(git -C .. rev-parse origin/main)      # production HEAD = what we reconcile TO
SINCE=$(python3 -c "import json;print(json.load(open('meta/last-synced.json'))['app_commit'])")
echo "Reconcile FROM $SINCE  ──▶  TO (origin/main) $TARGET"
```

> **Never use `git rev-parse HEAD` or read the working tree for accuracy.** A feature branch can add or remove UI that isn't live yet — documenting it ships lies to clinics. Always diff `$SINCE..$TARGET` and read code with `git show origin/main:<path>`. (This is not hypothetical: a `feature/remove-baa-onboarding-milestone` checkout once led to an article dropping a milestone that was still live on `main`.)

If `SINCE` already equals `$TARGET`, the docs are current — **stop, nothing to do.**

---

## Step 1 — Find what changed in the app

Get the changed file paths and the human context behind them.

```bash
# Files changed in PRODUCTION since we last reconciled (this is what drives staleness):
git -C .. diff --name-only $SINCE..$TARGET

# The "why" — commit subjects + merged PRs in the window:
git -C .. log --oneline $SINCE..$TARGET
gh -R <owner>/<repo> pr list --state merged --base main --search "merged:>=<date-of-$SINCE>"   # optional, richer context
```

> Prefer reading the **PR descriptions** for intent — a one-line commit rarely tells you whether a UI label or a user-facing rule changed. The diff tells you *what files*; the PR tells you *what it means for a clinic user*.

Keep the `--name-only` list handy; it's the input to Step 2.

---

## Step 2 — Triage: map changed paths → article actions

For **each changed path**, decide which of three buckets it falls in. This is the core judgment of the loop.

### 2a. Does it match an existing article's `sources`? → **STALE**

Walk `meta/registry.yaml`. For every article, test its `sources[]` globs against the changed paths. A match means the article *might* now be wrong.

Matching rules (the registry uses directory globs like `app/Filament/Clinic/Resources/PatientResource/**` on purpose):
- `dir/**` matches any changed file under `dir/` (so internal file moves/renames still match).
- An exact file path matches only that file.
- One changed file can flag **several** articles (e.g. a change to `app/Models/Episode.php` legitimately touches most `episodes/*` articles). Flag them all — better to review and clear than to miss one.

For each match, set that article's `status: stale` in the registry. (Leave `last_reviewed_commit` as-is; it records the last *good* review.)

> **Not every match needs a prose change.** A refactor that renames an internal method changes the file but not a single word the clinic user sees. That's fine — you still *review* the stale article against the new code; if nothing user-visible moved, you clear it back (Step 3) without editing prose. "Stale" means "verify," not "rewrite."

### 2b. New user-facing feature with **no** matching article? → **NEW ARTICLE (maybe)**

A changed path under a user-facing area that no article `sources` from is a candidate for a new article — e.g. a brand-new `app/Filament/Clinic/Resources/SomethingResource/` or a new patient route in `routes/tenant.php`.

**Run it through `meta/SCOPE-AND-TMI.md` first.** Most new code is *not* article-worthy (internal mechanics, super-admin/Platform features, obvious UI). Only if a clinic user *does something* with it that *isn't obvious from the screen* does it earn an article. If yes:
- Add a new `articles[]` entry (path, section, audience, `status: drafting`, priority, `sources[]`, screenshots, `last_reviewed_commit: null`).
- Check `meta/CONTENT-OUTLINE.md` — the outline may already describe where it belongs.

### 2c. Removed/retired feature whose article still exists? → **ARCHIVE/DELETE**

If a PR removed a feature (deleted Resource, dropped route), its article is now lying. Remove the article file, drop its `SUMMARY.md` entry, and delete its registry entry (note the removal in the PR body). If unsure whether it's truly gone vs. temporarily moved, set `status: blocked` and flag it for the human in the PR rather than deleting.

> **Ignore-list (these never affect docs):** changes confined to `tests/**`, `database/migrations/**` (unless they change a user-visible rule), `database/factories/**`, `app/Console/**`, `app/Jobs/**` plumbing, queue/cache config, CI files, and anything under `app/Filament/Platform/**` (super-admin only — out of scope, full stop). A migration that adds an index = skip. A migration that adds a *new user-facing field with a consequence* = the Resource/Model change alongside it will already flag the right article.

---

## Step 3 — Update each affected article

For every article now `stale` (2a) or `drafting` (2b), in priority order:

1. **Re-read the code.** Open the article's `sources[]` at their **production state** — read each with `git show origin/main:<path>`, never the working tree (it may be on a feature branch). Use the AUTHORING-GUIDE's 7-step research process. Verify *every* bold UI label, field name, button, and navigation path against the live code — names drift silently.
2. **Update the prose.** Change only what the code change actually changed. Don't rewrite a working article because one label moved. Keep the existing voice and structure.
3. **Re-shoot only this article's screenshots** if a pictured screen changed. See **Refreshing screenshots** below (and `meta/AUTHORING-GUIDE.md` → screenshots), and run the harness filtered to just this article's screenshot ids (do **not** re-shoot the whole set). Demo clinic only — never Tula/PHI.
4. **Run the quality checklist** (AUTHORING-GUIDE → checklist).
5. Set `status: review` and `last_reviewed_commit:` to the production commit you're reconciling to (`$TARGET`, i.e. `git -C .. rev-parse origin/main`) — **not** the working-tree HEAD.

If a stale article turns out to need **no** change (pure internal refactor), still bump its `last_reviewed_commit` to `$TARGET` (origin/main) and set `status: review` (or back to `published` if you prefer to signal "verified, untouched" — note which in the PR). The point is the registry records that a human-reviewable pass happened.

---

## Step 4 — Open the PR (the human gate)

Bundle the whole reconciliation pass into **one** PR so the reviewer sees the app-change → doc-change story together.

```bash
git checkout -b docs/sync-$(date +%Y-%m-%d)
git add -A
git commit   # see body template below
git push -u origin docs/sync-$(date +%Y-%m-%d)
gh pr create --base dev --title "Docs sync: reconcile to <short-sha>" --body "..."
```

PR body should make review fast — list, per article: **what app change triggered it** (link the PR/commit) and **what you changed in the doc** (or "verified, no change"). Call out any new articles and any removed ones explicitly. Flag anything you were unsure about for the human to decide.

**Do not** bump `last-synced.json` in this same commit yet — see Step 5.

---

## Step 5 — After merge: advance the anchor

Only once the PR is **reviewed and merged** do you move the anchor forward:

```bash
# the PRODUCTION commit you reconciled to — the $TARGET captured at Step 0,
# NOT a fresh rev-parse (origin/main may have moved on, and never the working-tree HEAD)
NEWSHA=$TARGET
# update meta/last-synced.json: app_commit -> $NEWSHA, synced_at -> today
```

Flip the merged articles' `status` to `published`. The next maintenance run now diffs forward from `$NEWSHA`, so this window is never re-processed.

> **Why after merge, not before:** if you advance the anchor before the human approves and the PR gets changes or is rejected, the next run would skip the very window that still needs work. The anchor must only ever point at a commit whose doc reconciliation is *actually live*.

---

## Refreshing screenshots

Screenshots are **registry-driven** and captured by an automated harness (`php artisan help:screenshots`) from the **demo clinic only** (`demo.rtmlink.com` — never the real Tula clinic, never `.test` in published prose). The full mechanics — the registry schema (`role`/`url`/`wait_for`/`output` plus `selector`/`steps`/`auth`), demo-data seeding, the local-iterate→prod-capture workflow, and embedding — live in **`meta/SCREENSHOTS.md`**.

**In the three-agent pipeline, capture is the Visualizer's job — not the Scout's.** The Scout (this maintenance loop) never logs into prod or shoots images. When an article goes `stale` (Step 2a) and a *pictured* screen actually changed, the Scout just **flags which of its screenshot ids need re-shooting** (and fixes any obviously-drifted `wait_for`/`url`/`selector` it can read from the code). The **Visualizer** (`meta/agents/visualizer.md`) then re-shoots **only those ids** against the demo clinic and embeds them in its own PR.

> **Capture touches production.** Seeding demo data and capturing run against the live demo clinic, so they are deliberate and human-gated — never part of an automated Scout run.

---

## Triage heuristics (quick reference)

| Changed path (examples)                                   | Likely action |
|-----------------------------------------------------------|---------------|
| `app/Filament/Clinic/Resources/PatientResource/**`        | Stale → `patients/*` articles |
| `app/Models/Episode.php`, `app/Models/Window.php`         | Stale → `episodes/*` + any billing-window article |
| `app/Livewire/Patient/**`, `routes/tenant.php` (patient routes) | Stale → patient-facing / survey-link / exercise articles |
| `app/Services/Billing/**`, `app/Models/BillingClaim.php`  | Stale → `billing/*` articles |
| `app/Services/Ehr/**`                                      | Stale → integrations article |
| **New** `app/Filament/Clinic/Resources/FooResource/**`    | Candidate new article — run SCOPE-AND-TMI |
| `database/migrations/**` (index/perf only)                | Ignore |
| `database/migrations/**` (new user-visible field + rule)  | The paired Model/Resource change flags the right article; document the *consequence*, not the column |
| `tests/**`, `app/Jobs/**`, queue/cache config, CI         | Ignore |
| `app/Filament/Platform/**`, anything `super_admin`-gated  | Ignore (out of scope) |

When a path matches nothing and isn't obviously user-facing, **default to ignore** and move on — under-reacting is cheap; bloating the docs with internal churn is not. (Same philosophy as SCOPE-AND-TMI.)

---

## Edge cases & gotchas

- **A rename in the app breaks a `sources` glob.** If a PR moves `app/Services/DrChrono/` → `app/Services/Ehr/`, the old glob stops matching future changes. When you update the article, **also fix its `sources[]`** to the new path. Stale globs silently stop flagging — audit globs whenever you touch an article.
- **`last_reviewed_commit` vs. `last-synced.json`.** Per-article `last_reviewed_commit` = when *that article* was last verified. Global `last-synced.json` = the floor the whole loop diffs from. They can differ (an article reviewed in an earlier pass keeps its older commit until something re-flags it). That's correct.
- **Big windows (loop hasn't run in a while).** Same procedure; just expect more matches. Triage in priority order; if it's too large for one PR, split by section (e.g. one PR for `episodes/*`, one for `billing/*`) but **don't advance the anchor until the last split PR merges**, or advance it per-merged-PR using that PR's reconciled SHA.
- **Outline drift.** If the app grew a feature the `CONTENT-OUTLINE.md` never anticipated, add it to the outline in the same PR so the next author has guidance.
- **No `gh` / no remote.** The loop still works with pure `git -C .. log` for context; PR creation is the only step that needs the remote.

---

## Dry-run to validate the wiring

Before trusting the loop, prove it flags the *right* articles:

```bash
# pretend the docs are 20 production-commits behind:
OLD=$(git -C .. rev-parse origin/main~20)
git -C .. diff --name-only $OLD..origin/main
```

Hand-check: do the changed paths match the `sources` globs of the articles you'd *expect* to be affected? E.g. if `PatientResource` changed in that window, the `patients/*` articles should be the ones that light up. If the expected articles don't match, the bug is a too-narrow `sources` glob — widen it to the directory (`…/**`). This is the single most important thing to get right: **the loop is only as good as the `sources` globs.**

---

## One-line summary for a scheduled agent

> `git -C .. fetch origin main`; read `meta/last-synced.json`; `git -C .. diff --name-only <commit>..origin/main` (production, never working-tree HEAD); match changed paths against each article's `sources` in `meta/registry.yaml`; set matches `stale`; for each, re-verify against `git show origin/main:<path>`, update prose + re-shoot only its screenshots (demo tenant only), set `review` + `last_reviewed_commit` to `origin/main`'s SHA; consider new/removed features via `SCOPE-AND-TMI.md`; open ONE PR to `dev` for human review; never auto-publish; after merge, advance `last-synced.json` to the reconciled `origin/main` SHA.
