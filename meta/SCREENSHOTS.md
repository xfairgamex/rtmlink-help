# Screenshots — Capturing & Embedding

> **The screenshot system, end to end** — how a screenshot is declared, captured from the demo clinic, and embedded in an article. This is the manual for the **Visualizer** agent (`meta/agents/visualizer.md`) and for any author registering a screenshot.
>
> Writing craft → `meta/AUTHORING-GUIDE.md`. *Whether* a screen earns a screenshot → `meta/SCOPE-AND-TMI.md` (the screenshot filter). *Which* screenshots exist → `meta/registry.yaml`.

## The one rule (non-negotiable)

Screenshots come from the **demo clinic only — `demo.rtmlink.com`** — whose patients are fake (`[DEMO]`-prefixed). **NEVER** capture the real Tula clinic (`tula.rtmlink.com`) or any real patient (that's PHI). After every capture, **eyeball the PNG**: if you see a name that isn't `[DEMO]`-prefixed, stop. And never write a `.test` address into a published article — the live site is `rtmlink.com`.

## How it works, in one breath

A screenshot is one entry in the registry's `screenshots:` map. The harness (`php artisan help:screenshots`, which lives in the **app**) logs into the demo clinic as a role, navigates to a URL, optionally clicks through to a record, waits for an anchor of text, then writes a PNG into **this** repo's `.gitbook/assets/`. The article embeds it with a relative `![]()` link.

## The registry schema (every field)

```yaml
screenshots:
  episode-exercises-tab:                 # the id (referenced from an article's `screenshots: [...]`)
    role: provider                       # which demo login to use (ignored when auth: false)
    url: https://demo.rtmlink.com/episodes
    steps:                               # OPTIONAL — clicks to run after landing, before the shot
      - "[DEMO] Marcus Chen"             #   click by visible text OR a CSS selector
      - 'button:has-text("Exercises")'
    wait_for: "Assign Exercise"          # text that must appear before capturing (proves it rendered)
    selector: '.fi-section'              # OPTIONAL — crop to this element instead of full-page
    auth: false                          # OPTIONAL — skip login for token/magic-link pages (default true)
    output: .gitbook/assets/exercises/episode-exercises-tab.png
```

| Field | Required | What it does |
|-------|:--:|--------------|
| `role` | yes | Which seeded demo login the harness logs in as (`clinic_owner` / `provider` / `staff`). Ignored when `auth: false`. |
| `url` | yes | The page to visit. Stored as the **production** `demo.rtmlink.com` URL; `--base` swaps the host for local runs. |
| `wait_for` | yes | Text that must be present before the shot fires — the proof the page (or the post-`steps` state) rendered. Pick a stable, specific string. |
| `output` | yes | PNG path **relative to this repo root** (`.gitbook/assets/<section>/<id>.png`). |
| `selector` | no | A CSS selector to **crop** to (one element) instead of full-page. |
| `steps` | no | An ordered list of clicks (text or CSS) to run **after** navigating, **before** the shot — to reach a record/tab the URL can't address. |
| `auth` | no | `false` = **don't log in**; go straight to `url`. For patient magic-link pages (`/s/{token}/…`). Defaults to `true`. |

## Choosing the fields

**Full-page (default).** Top-level list/dashboard pages reachable by a static URL after login (`/patients`, `/exercises`). Just `role` + `url` + `wait_for` + `output`. This covers most screenshots.

**Crop (`selector`) — "clean crop + context."** Use to focus on one control or section (a form field, a toolbar, a widget). The harness's `screenshotElement` captures the element's box *tightly*, so **point `selector` at a wrapper that carries context** (a Filament section like `.fi-section`, a field wrapper like `.fi-fo-field-wrp`), **not** a bare `<button>` — a floating button reads as a fragment. There's no auto-padding; the framing comes from the selector you choose.

**Click-navigation (`steps`).** Record-specific screens (an episode's tab, a widget on one patient's page) live at `/episodes/{uuid}` — a URL the registry can't hardcode and the harness can't look up (it hits prod over HTTP with no DB access). Instead, start at a static list `url` and `steps` your way in: click the `[DEMO]` patient's row, then the tab. Each step is passed to the harness's `click()`, which accepts a visible **text** *or* a **CSS selector** — use CSS when text is ambiguous (the sidebar nav *and* the tab both say "Exercises"; `'button:has-text("Exercises")'` disambiguates). Set `wait_for` to text on the **final** state.

**No-login (`auth: false`).** Patient-facing magic-link pages (`/s/{token}/exercises`) take no login. Set `auth: false` and put the token in `url`. Because the token is dynamic, the demo seeder **pins it to a stable value** (see below) so the URL is fixed.

## Demo data — the screen has to have something on it

A screen only screenshots well if the demo clinic actually has the relevant data, and **feature-flagged** sections only appear when enabled. For anything beyond the patients/episodes the base `DemoTenantSeeder` creates, you seed it.

**The `DemoHepSeeder` pattern** (`../database/seeders/DemoHepSeeder.php`, written for the Exercises screenshots — copy its shape for other features):
- **Demo-tenant-only & idempotent.** It looks up tenant `demo`, writes only `[DEMO]` records, and is safe to re-run.
- **Enable the feature flag if there is one.** Exercises live behind `settings.exercises.enabled`; the seeder sets it via `data_set($settings, 'exercises.enabled', true)`. (Most features need no flag.)
- **Seed *through the real services*, not raw tables.** It assigns a program via `HepService::assignProgram` and logs dated completions via `HepService::logExercise` + `RtmCounterService::recordExerciseCompletion` — so the `ExerciseLog`s *and* the billing `DailyEvent`s stay consistent, exactly as the live app produces them. Hand-inserting rows can create states production never could (e.g. "adherent but unbilled").
- **Pin a stable token** for any magic-link screenshot: the seeder sets the demo patient's `survey_token` to a known value, so the page has a fixed URL the registry can use.

## Running the harness

The harness lives in the **app** (`php artisan help:screenshots`). It reads this repo's registry (via the `SCREENSHOT_HELP_REPO_PATH` env var) and writes PNGs back here.

```bash
# from a checkout of the app that has the harness + vendor installed:
php artisan help:screenshots                          # all registry entries
php artisan help:screenshots --only=exercise-list     # just one
php artisan help:screenshots --base=https://demo.rtmlink.test   # local iteration (Herd)
```

**Iterate locally, capture against prod.** Tune `selector`/`steps`/`wait_for` against a **local** demo clinic (`--base=https://demo.rtmlink.test`, with the demo tenant + the feature seeder + the screenshot logins seeded into the dev DB) — fast, no prod load. Once every shot lands locally, capture the real images against prod (`demo.rtmlink.com`, no `--base`).

**The prod path has two human-run steps** (the harness needs demo data + logins to already exist on prod):
1. On prod (`ssh rtmlink-prod`, `cd /var/www/rtmlink`): seed the screenshot logins and any feature data —
   `php artisan db:seed --class=DemoScreenshotUserSeeder --force` and e.g.
   `php artisan db:seed --class=Database\\Seeders\\DemoHepSeeder --force`. Demo-tenant-only; verify prod is left on `main`.
2. Capture: with `DEMO_SCREENSHOT_PASSWORD` set, run `php artisan help:screenshots`. The PNGs land in `.gitbook/assets/`.

> Two independent safety layers keep this demo-only: the harness **host allow-list** (only `demo.rtmlink.com` / `demo.rtmlink.test`) and the screenshot logins being **attached to the `demo` tenant only**. Both must hold — never weaken either.

## Embedding in the article

Reference the PNG with a path **relative to the article file** (assets sit at the repo root, articles one level down):

```markdown
![A clear description of what the screenshot shows.](../.gitbook/assets/<section>/<id>.png)
```

The **alt text is the caption** — make it descriptive and specific ("The Patients list, with name, date of birth, phone, status, current episode, and provider"), never just "screenshot." It serves accessibility and is the only text a reader gets if the image fails to load.

## Before you call a screenshot done

- [ ] Declared in `registry.yaml` (`screenshots:` map) **and** listed in the article's `screenshots: [...]`.
- [ ] Captured from the **demo** clinic; PNG eyeballed — only `[DEMO]` data, no PHI.
- [ ] Embedded with a descriptive-alt relative `![]()` link that resolves.
- [ ] A non-trivial, non-empty PNG (the screen actually had data on it).
