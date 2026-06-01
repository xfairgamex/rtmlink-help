# Authoring Guide — How to Research & Write RTMLink Help Articles

> **This is the craft manual.** It covers *how* to research the code and *how* to write a high-quality article.
> - *What* each article should cover → `meta/CONTENT-OUTLINE.md`
> - *Whether* something is worth documenting → `meta/SCOPE-AND-TMI.md`
> - *Which* articles exist + their status + sources + screenshots → `meta/registry.yaml` (the keystone)

Read `AGENTS.md` (repo root) first for orientation and the golden rules. This guide assumes you've read it.

---

## Your mission

You are writing end-user help articles for **RTMLink**, a Remote Therapeutic Monitoring (RTM) platform used by physical-therapy clinics. Your audience is **clinic staff** — front-desk coordinators, providers, billing staff, clinic owners — **not developers**. Write clear, task-oriented articles that help a busy clinic user accomplish a goal.

The thing that makes these articles trustworthy: **every UI label, field, button, and navigation path is verified against the live application code before it's written.** You never guess or invent UI text.

---

## The application, in one screen

RTMLink is a **Laravel 12 + Filament v4** multi-tenant SaaS app with a **Livewire** patient portal. You don't need to understand the framework — you need to know *where to read* to find what a user sees.

| What the user sees | Built with | Where to read it |
|--------------------|-----------|------------------|
| Clinic staff admin UI | Filament v4 | `../app/Filament/Clinic/` |
| Super-admin platform UI (not for clinic users) | Filament v4 | `../app/Filament/Platform/` — **usually skip; see SCOPE-AND-TMI** |
| Patient-facing survey / exercises | Livewire + Blade | `../app/Livewire/Patient/`, `../resources/views/` |
| Front-desk check-in kiosk | Livewire + Blade | `../app/Livewire/Checkin/` |
| Data + business rules (statuses, limits) | Eloquent models | `../app/Models/` |
| Required fields, defaults, limits | Migrations | `../database/migrations/` |
| Who can do what (per role) | Policies | `../app/Policies/` |
| Workflow logic (e.g. how billing is calculated) | Services / Actions / Jobs | `../app/Services/`, `../app/Actions/`, `../app/Jobs/` |
| Demo data for screenshots | Seeder | `../database/seeders/DemoTenantSeeder.php` |

> Everything you read for accuracy lives **above** this repo at `../` (the RTMLink app). You **write** articles **here** in `rtmlink-help/`. Never edit the app from here.

---

## Where to read, per help section

Use this map to find the right source code for each section. **Verify these paths still exist** before relying on them — the app changes. (Paths are relative to the app root `../`.)

| Help Section | Primary Codebase Locations |
|-------------|---------------------------|
| **Getting Started** | `app/Filament/Clinic/Pages/Dashboard.php`, `app/Filament/Clinic/Widgets/` (`KpiCardsWidget`, `NeedsAttentionWidget`, `OnboardingChecklistWidget`, `QuickActionsWidget`), `app/Models/User.php`, `app/Models/Tenant.php`, `app/Filament/Clinic/Pages/Auth/`, `database/seeders/RolesSeeder.php` |
| **Patients** | `app/Filament/Clinic/Resources/PatientResource.php` + `PatientResource/Pages/` + `PatientResource/RelationManagers/`, `app/Models/Patient.php` |
| **Episodes & Enrollment** | `app/Filament/Clinic/Resources/EpisodeResource.php` + `EpisodeResource/Pages/` + `EpisodeResource/RelationManagers/` + `EpisodeResource/Widgets/`, `app/Models/Episode.php`, `app/Models/Window.php` (30-day billing window), `app/Models/EpisodePauseHistory.php`, `app/Services/EpisodeEnrollmentService.php`, `EpisodeLifecycleService.php`, `EpisodeWindowService.php` |
| **Surveys** | `app/Filament/Clinic/Resources/SurveyResource.php` + `SurveyResource/`, `app/Models/Survey.php`, `app/Models/SurveyQuestion.php`, `app/Models/SurveyResponse.php`, `app/Enums/QuestionType.php` |
| **Exercises / HEP** | `app/Filament/Clinic/Resources/ExerciseProgramResource/`, `ExerciseResource/`, `ExerciseVideoResource/`, `app/Filament/Clinic/Resources/EpisodeResource/RelationManagers/HepAssignmentsRelationManager.php`, `EpisodeResource/Widgets/ExerciseAdherenceWidget.php`, `app/Livewire/Patient/ExerciseWalkthrough.php`, `app/Enums/HepFrequency.php`, `ExerciseCategory.php`, `ExerciseDifficulty.php`, `ExerciseFeeling.php` |
| **Messaging** | `app/Filament/Clinic/Resources/ConversationResource/`, `app/Filament/Clinic/Pages/MessagesCenter.php`, `app/Livewire/Clinic/MessagesCenter.php`, `app/Livewire/Clinic/MessagingDrawer.php`, `app/Models/Conversation.php`, `app/Models/Message.php`, `app/Enums/Channel.php`, `ConversationStatus.php`, `MessageDirection.php` |
| **Time Tracking** | `app/Livewire/Clinic/Episodes/TimeEntriesTable.php`, `TimeTrackingWidget.php`, `InteractiveCommunicationsCard.php`, `app/Models/TimeEntry.php` |
| **Provider Summaries** | `app/Filament/Clinic/Pages/PendingSummaries.php`, `ReviewSummary.php`, `app/Services/ProviderSummary/` (`ProviderSummaryBuilder`, `ProviderSummaryNotifier`, `ClinicOwnerDigestService`, `UnreadSurveyService`) — *no `ProviderSummary` model; summaries are built by services* |
| **Billing & Claims** | `app/Filament/Clinic/Resources/BillingSuggestionResource/`, `app/Filament/Clinic/Pages/BillingSettings.php`, `app/Models/BillingSuggestion.php`, `app/Models/BillingClaim.php`, `app/Models/Window.php`, billing services (`BillingSuggestionService`, `BillingSuggestionGenerationService`, `BillingExportService`, `RtmCounterService`, `EpisodeWindowService`) |
| **Appointments** | `app/Filament/Clinic/Pages/Appointments.php`, `PatientResource/RelationManagers/PatientAppointmentsRelationManager.php`, `EpisodeResource/RelationManagers/AppointmentsRelationManager.php`, `app/Models/Appointment.php` |
| **Check-In** | `app/Livewire/Checkin/FrontDeskCheckin.php`, `resources/views/livewire/checkin/` |
| **Patient Portal** | `app/Livewire/Patient/SurveyForm.php`, `app/Livewire/Patient/ExerciseWalkthrough.php`, `routes/tenant.php` (survey magic links `/s/{token}`, `/patient-portal`) |
| **Settings** | `app/Filament/Clinic/Pages/ClinicSettings.php`, `BillingSettings.php`, `Integrations.php`, `ProviderNotifications.php`, `app/Models/Tenant.php`, `app/Models/ProviderNotificationSetting.php` |
| **User Management** | `app/Filament/Clinic/Resources/UserResource/`, `app/Models/User.php`, `app/Policies/`, `database/seeders/RolesSeeder.php` |
| **Clinical Note Templates** | `app/Filament/Clinic/Resources/ClinicalNoteTemplates/`, `app/Models/ClinicalNoteTemplate.php` |
| **Message Templates** | `app/Filament/Clinic/Resources/MessageTemplates/`, `app/Models/MessageTemplate.php`, `app/Enums/TemplateType.php` |
| **Profile** | `app/Filament/Clinic/Pages/Profile.php`, `app/Filament/Clinic/Pages/InitialPasswordSetup.php` |
| **Integrations (DrChrono)** | `app/Filament/Clinic/Pages/Integrations.php`, `app/Services/Ehr/` (`DrChronoClient`, `DrChrono*SyncService`, `DrChronoAppointmentExportService`) |

> **If the outline lists a feature you can't find in the code, do not document it.** Note it in `meta/registry.yaml` (set the article `status: blocked` with a comment) and move on. Documenting unbuilt features is a golden-rule violation.

---

## The 7-step research process (do this for *every* article)

> **Step 0 — pin the production baseline.** Before reading any file, run `git -C .. fetch origin main`. Read every source below from **`origin/main`** (production) — e.g. `git show origin/main:app/Filament/Clinic/Resources/PatientResource.php` — **never** the working tree or `git rev-parse HEAD`. The parent app is usually checked out on an unmerged feature branch, so the working tree can show UI that isn't live yet; documenting it ships lies to clinics. (See `AGENTS.md` Golden rule #1.)

```
Step 1 — Read the Filament Resource or Page
         → table columns, form fields, actions, filters, infolist entries
         → this is literally what the user sees and can click

Step 2 — Read the Eloquent Model
         → $fillable, casts(), relationships, scopes, constants
         → the data structure and business rules behind the screen

Step 3 — Read the Migration(s)
         → column types, defaults, nullable, length limits
         → required vs optional fields, allowed values, character limits

Step 4 — Read the Policy (if one exists)
         → which roles can view / create / edit / delete
         → powers the "Role Permissions" table in the article

Step 5 — Read related Services / Actions / Jobs
         → business logic: how billing windows close, how summaries generate
         → essential for the "How It Works" section

Step 6 — Read related Livewire components (patient-facing features)
         → app/Livewire/ for logic, resources/views/ for the Blade template
         → what the patient actually sees on their phone

Step 7 — Check the feature spec (deep reference only, if needed)
         → ../docs/blueprint/features/ and ../docs/specs/
         → use to understand intent; the CODE still wins on accuracy
```

### What to extract at each layer

**From a Filament Resource:**
- **Table columns** → field descriptions
- **Table filters** → the "filtering & searching" section
- **Table actions / bulk actions** → "what you can do" / "managing multiple items"
- **Form schema** → the field-by-field "creating / editing" steps
- **Infolist schema** → the "viewing details" section
- **Navigation label / group** → where the user finds it in the sidebar

**From a Model:**
- **Constants / enums** → status values, types, categories the user will see verbatim
- **Relationships** → how things connect ("each episode belongs to a patient")
- **Casts** → dates, money, booleans that affect display
- **Accessors** → computed values shown on screen

**From a Policy:**
- **Per-role allow/deny** → the Role Permissions table
- **Conditional logic** → when an action is hidden or disabled

> **Heads-up: most features have no dedicated Policy class.** Only a couple exist (e.g. `ExerciseVideoPolicy`). Authorization is mostly **role/permission-based** (spatie permissions seeded in `../database/seeders/RolesSeeder.php`) and enforced inside Filament resources/pages (e.g. `canViewAny()`, action `visible()`/`authorize()` checks). So to fill the Role Permissions table, read **`RolesSeeder.php`** + the resource's own visibility methods, not a `*Policy.php` file that may not exist.

> Enums live in `../app/Enums/`. **Not every status has an enum** — some are model constants or plain string columns (e.g. there is currently no `EpisodeStatus` enum; episode status is defined on the `Episode` model). Always confirm the actual allowed values where they're defined, not where you'd expect them.

---

## Writing style

**Voice & tone**
- **Second person:** "You can enroll a patient by…"
- **Active voice:** "Click **Save**," not "the record should be saved"
- **Present tense:** "The system sends a survey," not "will send"
- **Friendly but professional:** this is healthcare software — clear and trustworthy, never cute
- **Task-oriented:** lead with the goal the user is trying to achieve

**Plain language — never use developer/internal jargon.** Banned words in published articles: *Filament, Livewire, Eloquent, migration, tenant, Blade, model, resource, enum, webhook, queue, job, repository*. Say "clinic," not "tenant." Say "the patient list," not "the Patient resource."

### Article template

Every article follows this shape (omit sections that don't apply — a short article is fine):

```markdown
# Article Title

One or two sentences on what this article covers.

## Overview

What this feature is and why it matters (2–3 sentences).

## How It Works

The concept or workflow at a high level, before the click-by-click steps.

## Step-by-Step Instructions

### Doing the Thing

1. Go to **Section Name** in the left sidebar.
2. Click the **Create** button.
3. Fill in the fields:
   - **Field Name** — what it's for and any constraint (e.g. required, max length).
   - **Another Field** — description and allowed values.
4. Click **Save**.

> **Note:** Important callouts, warnings, and "gotchas" go in blockquotes.

![Dashboard overview](../.gitbook/assets/getting-started/dashboard-overview.png)

## Understanding [Concept]

Explain statuses, calculations, or concepts the user needs (e.g. what an "interaction day" is).

## Role Permissions

| Action | Clinic Owner | Provider | Staff | Billing Staff | Auditor |
|--------|:-:|:-:|:-:|:-:|:-:|
| View   | Yes | Yes | Yes | Yes | Yes |
| Create | Yes | No  | Yes | No  | No  |
| Edit   | Yes | No  | Yes | No  | No  |
| Delete | Yes | No  | No  | No  | No  |

## Related Articles

- [Related article](../section/article.md)
```

> Fill the Role Permissions table from the **Policy class** (Step 4), not from assumption. If a feature has no policy restrictions, you can drop the table or say "available to all clinic users."

### Formatting rules

- **Bold** for UI element names: buttons, menu items, field labels, page titles (`**Save**`, `**Needs Attention**`).
- `code` for system values the user sees literally: CPT codes (`98977`), status keys, tokens.
- `>` blockquotes for tips, warnings, notes.
- Tables for comparing options, listing statuses, role permissions.
- Numbered lists for sequential steps; bullets for non-sequential info.
- Keep paragraphs short. Clinic staff scan; they don't read.

### Do / Don't

**Do**
- Verify every label, field, and path against the actual code (the whole point).
- State role restrictions when they apply ("Only Clinic Owners and Staff can…").
- Explain *why* when behavior is non-obvious (e.g. why a billing code only appears after a window closes).
- Link related articles.

**Don't**
- Guess at UI labels — always confirm in the resource/page code.
- Use developer jargon (see banned list).
- Document Platform/super-admin-only features (not for clinic users — see SCOPE-AND-TMI).
- Document features that don't exist yet.
- Pad. If the answer is three sentences, write three sentences.

---

## Screenshots (automated, demo tenant only)

Screenshots are **generated by an automated harness**, not captured by hand. This keeps them consistent, repeatable, and — critically — **sourced only from the demo clinic**, never from real patient data.

> **PHI rule (non-negotiable):** Screenshots come from the **demo clinic only** — `demo.rtmlink.com`. **NEVER** screenshot the real Tula clinic (`tula.rtmlink.com`) or any real patient. (And never put a `.test` local-dev address in a published guide — the live site is `rtmlink.com`.) The demo clinic's patients are fake (`[DEMO]`-prefixed: Sarah Johnson, Marcus Chen, etc.) and safe to show.

### How it works

1. **Declare** the screenshot in `meta/registry.yaml` under the `screenshots:` map, and list its id in the article's `screenshots:` array. One entry per image:
   ```yaml
   screenshots:
     dashboard-overview:
       role: clinic_owner                 # which demo login to use
       url: https://demo.rtmlink.com/     # page to visit
       wait_for: "Needs Attention"        # text to wait for (ensures page is loaded)
       output: .gitbook/assets/getting-started/dashboard-overview.png
   ```
2. **Run the harness** (one command) — it logs into the demo tenant as the listed role, visits the URL, waits for `wait_for`, and writes the PNG to `output`:
   ```bash
   # from the app root (../)
   php artisan help:screenshots                 # all screenshots
   php artisan help:screenshots --only=dashboard-overview   # one
   ```
   (The harness and the known demo login are set up under `meta/MAINTENANCE.md` → Screenshots, and in the app's `tests/Browser/Screenshots/`. If `php artisan help:screenshots` doesn't exist yet, that setup task hasn't run — note it in the registry rather than taking a manual screenshot of real data.)
3. **Reference** the image in the article using a path **relative to the article file**. Assets live at the repo root in `.gitbook/assets/<section>/`, so from an article in `getting-started/` it's one level up:
   ```markdown
   ![Dashboard overview](../.gitbook/assets/getting-started/dashboard-overview.png)
   ```

### When to add a screenshot

Screenshot **high-value, stable** screens only: dashboards, primary list views, key forms, and any screen where "a picture is worth it." **Don't** screenshot every field, every modal, or anything that changes every release. See `meta/SCOPE-AND-TMI.md` for the screenshot tier rules.

---

## Quality checklist (run before setting `status: review`)

- [ ] Every field name matches the actual form/table column label in the code.
- [ ] Every button/action name matches the actual action label.
- [ ] Every navigation path is accurate (sidebar → page → section).
- [ ] Role permissions verified against the Policy class.
- [ ] Status values match the actual enum/constant definitions.
- [ ] Any stated limits (character counts, required fields) match the migration/validation.
- [ ] No developer jargon slipped through (scan for the banned words).
- [ ] Article follows the template; paragraphs are short and scannable.
- [ ] Screenshots (if any) are declared in `registry.yaml`, generated from the **demo** tenant, and referenced with a correct relative path.
- [ ] Related articles are linked.
- [ ] `meta/registry.yaml` updated: `status: review` and `last_reviewed_commit` set to production HEAD (`git -C .. rev-parse origin/main`), not the working-tree HEAD.
- [ ] If new, the article is added to `SUMMARY.md` so GitBook publishes it.

---

## The authoring loop (one article, start to finish)

1. Open `meta/registry.yaml`; pick the next article with `status: todo` (follow priority order). Set it `status: drafting`.
2. Confirm scope in `meta/SCOPE-AND-TMI.md` — is it worth an article? worth screenshots?
3. Read its `sources` via the 7-step process. Verify the paths exist.
4. Read its content outline in `meta/CONTENT-OUTLINE.md`.
5. Write the article using the template and style above.
6. Declare/confirm screenshots in the registry; run the harness.
7. Run the quality checklist. Set `status: review`, set `last_reviewed_commit` to `origin/main`'s SHA (`git -C .. rev-parse origin/main`).
8. Add the article to `SUMMARY.md` if it's new.
9. Changes ship via **PR for human review** — never auto-publish healthcare content.
