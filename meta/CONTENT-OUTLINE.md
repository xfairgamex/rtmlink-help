# RTMLink Help — Content Outline

Per-section coverage for the help center, organized by functional area. Each entry describes what an article *should cover* — it is a **coverage map, not gospel**.

> **The code is the source of truth, not this outline.** This file tells you *what topics* to cover; the live app tells you the *exact* labels, fields, statuses, and limits. Always verify against `../app/` before writing (see `meta/AUTHORING-GUIDE.md` → the 7-step research process). If the outline lists something the code doesn't have, **don't document it** — flag it in `meta/registry.yaml`.

---

## 1. Getting Started

### 1.1 Welcome to RTMLink
- What RTMLink is (Remote Therapeutic Monitoring platform)
- Overview of how RTM works in a clinical setting
- Key benefits: automated survey delivery, billing automation, EHR integration

### 1.2 Logging In & Account Setup
- How to log in for the first time (invitation email flow)
- Setting your password
- Two-factor authentication setup
- Session timeout behavior (HIPAA-compliant auto-logout)

### 1.3 Understanding Your Role
- Overview of clinic roles: Clinic Owner, Provider, Staff, Billing Staff, Auditor
- What each role can access and do
- How to identify your role in the system

### 1.4 Navigating the Dashboard
- Overview of the clinic dashboard layout
- KPI cards: what each metric means
- Needs Attention widget: how to interpret and act on alerts
- Quick Actions widget: shortcuts to common tasks
- Onboarding checklist (for newly set-up clinics)

---

## 2. Patient Management

### 2.1 Viewing & Searching Patients
- How to access the patient list
- Searching by name, phone, email, or DOB
- Using filters (provider, SMS consent, email consent)
- Understanding patient status indicators

### 2.2 Creating a New Patient
- Required fields: first name, last name, DOB, mobile number
- Setting the primary provider
- SMS and email consent: what it means and how to configure
- Patient timezone settings
- Opt-in method and date tracking

### 2.3 Editing Patient Information
- Updating demographics, contact info, and consent preferences
- Changing the primary provider
- Understanding read-only fields (e.g., EHR-synced external ID)

### 2.4 Patient Consent Management
- SMS consent: what it enables, how to toggle
- Email consent: what it enables, how to toggle
- Consent date and method tracking for compliance
- Opt-in methods (portal, phone, in-person)

### 2.5 Messaging a Patient
- Sending an SMS or email directly from the patient list
- How channel availability depends on consent status
- Using message templates

---

## 3. Episodes & Enrollment

### 3.1 Understanding Episodes
- What an episode represents (an RTM engagement period)
- Episode lifecycle: active, paused, discharged
- Relationship between patients, episodes, and billing windows

### 3.2 Creating an Episode (Enrolling a Patient)
- Selecting a patient (one active episode per patient rule)
- Assigning a provider
- Choosing a survey and setting frequency (daily, every other day, weekdays)
- Setting the survey send time
- Choosing communication methods (SMS, email)
- Optional: sending a welcome message on enrollment
- Optional: adding clinical context (diagnosis code, ICD-10, body part, treatment type)

### 3.3 Viewing Episode Details
- Patient card: key demographics and enrollment info
- Current window card: 30-day billing window progress
- Survey settings: assigned survey, frequency, send time
- Survey responses table: viewing completed responses
- Time tracking section: logged time and interactions
- Exercise adherence: HEP completion at a glance
- Billing status: CPT code eligibility and progress

### 3.4 Managing Episode Status
- **Pausing** an episode: selecting a reason (patient requested, hospitalization, vacation, etc.)
- **Resuming** a paused episode
- **Discharging** an episode: selecting a reason and adding notes
- **Reopening** a discharged episode

### 3.5 Episode Search & Filters
- Advanced search: search by patient name, phone, email, DOB, provider, survey name
- Filtering by status, provider, survey, needs attention, time logged, communication method, date range
- Understanding the "Needs Attention" filter options (unread surveys, flagged, no check-ins 3+ days, high risk)

### 3.6 Episode Actions
- Copying the survey link
- Messaging the patient from the episode view
- Editing episode settings (provider, survey, frequency, communication methods)

---

## 4. Surveys

> **Nav note (July 2026):** published as the **Check-Ins** section (the app sidebar's word); files live in `check-ins/`. In-app forms still say "survey" in places, so articles may use both terms where the UI does.

### 4.1 Understanding Surveys
- What surveys are and how they're used in RTM
- Internal name vs. patient-facing name
- Survey status: active, inactive, default
- How the default survey works (auto-assigned to new episodes)

### 4.2 Creating a Survey
- Setting the survey name and description
- Adding questions with the question builder
- Question types:
  - **Scale** (0-10): setting min/max labels
  - **Yes/No**: predefined answer options
  - **Multiple Choice**: custom answer options
  - **Numeric**: number input with thresholds
  - **Text**: free-form responses
- Setting alert triggers on answers (flag severity: low, medium, high)
- Marking questions as "featured" (shown in episode list columns)
- Reordering questions with drag-and-drop
- Setting a question's analytics category

### 4.3 Editing & Managing Surveys
- Editing an existing survey
- Activating or deactivating a survey
- Setting a survey as the clinic default
- Duplicating a survey (creates inactive copy)
- Deleting a survey (soft delete / archive)

### 4.4 Previewing a Survey
- How to preview what patients see
- Preview uses clinic branding (logo, colors)
- No responses are submitted from preview

### 4.5 Understanding Survey Responses
- How patients receive and complete surveys (magic link via SMS/email)
- Response statuses: pending, in-progress, completed, expired
- Auto-save: patients can resume incomplete surveys
- Viewing responses in the episode detail view
- Understanding flagged responses and risk indicators
- Marking responses as read/unread
- Pain score tracking (from featured questions)

### 4.6 Survey Amendments
- What amendments are (patient corrections to prior responses)
- How patients submit amendments via survey history
- How amendments appear to providers

---

## 5. Exercises (Home Exercise Program / HEP)

> RTM credit: a patient marking **one exercise complete** counts as a **billable interaction day** for that calendar day — the same as answering a survey question. Make this connection clear wherever it's relevant; it's a core reason clinics use HEP.

### 5.1 Understanding the Home Exercise Program
- What HEP is and how it fits into an RTM episode
- How exercise completion counts toward RTM interaction days (billing relevance)
- The pieces: exercise library → exercise programs → assigning HEP to an episode → patient completes → adherence tracking

### 5.2 The Exercise Library
- Browsing and searching exercises
- Exercise attributes: category, difficulty, description/instructions
- Creating and editing exercises

### 5.3 Exercise Videos
- Adding a demonstration video to an exercise
- Choosing a thumbnail and (where supported) a looping clip/GIF range
- Video processing status (e.g. pending, ready) and what each means

### 5.4 Exercise Programs
- What a program is (a reusable, ordered set of exercises)
- Building a program and ordering its exercises
- Reusing programs across patients

### 5.5 Assigning HEP to an Episode
- Adding exercises/a program to a patient's episode
- Setting frequency (per the HEP frequency options)
- Setting reps/sets/hold or other per-exercise parameters (verify what the form exposes)
- Editing or removing assigned HEP

### 5.6 Tracking Exercise Adherence
- The exercise adherence view on the episode (completion over time)
- How adherence relates to interaction days and billing progress
- Spotting patients who aren't completing their HEP

### 5.7 The Patient's Exercise Experience
- How patients access their HEP (portal / link)
- Walking through exercises (instructions, video, marking complete)
- Capturing how the exercise felt (the patient feedback/"feeling" prompt)

---

## 6. Messaging & Communication

### 6.1 Messages Center Overview
- Accessing the messages center
- Conversation list: searching, sorting, and navigating
- Understanding channel badges (SMS, Email)
- Unread count indicators and failed delivery alerts

### 6.2 Viewing Conversations
- Message thread layout: timestamps, sender, content
- Delivery status indicators (pending, sent, delivered, read, failed)
- Scrolling through message history

### 6.3 Sending Messages
- Composing a new message
- Selecting a patient and communication channel
- Character limits for SMS (verify the exact limit in code)
- Email subject line (required for email)
- Using the messaging drawer from episodes or patient views

### 6.4 Managing Conversations
- Archiving conversations
- Deleting conversations
- Blocking patients (SMS only)

### 6.5 Message Templates
- What message templates are
- Using templates for quick message composition
- System templates vs. clinic-created templates

---

## 7. Time Tracking

> **Nav note (July 2026):** time tracking gets no standalone nav section (Joe's call). These articles live in `episodes/` and publish under the **Episodes** section of SUMMARY.md; this outline block stays as the planning home for their coverage.

### 7.1 Understanding Time Tracking in RTM
- Why time tracking matters for billing (CPT 98979, 98980, 98981)
- Activity types: data review, patient contact, team meeting, assessment, etc.
- How time entries connect to billing windows and CPT code eligibility

### 7.2 Logging Time on an Episode
- Using the time tracking widget in episode detail
- Entering duration (minutes)
- Selecting an activity type
- Adding notes
- Quick-add buttons for common durations (verify which presets exist)

### 7.3 Managing Time Entries
- Viewing all time entries for an episode
- Editing existing time entries
- Deleting time entries
- Understanding automatic window counter recalculation

### 7.4 Logging Time via Provider Summaries
- How review time is captured during daily summary review
- Bulk time logging across multiple patients
- Activity type and duration per patient

### 7.5 Logging Interactive Contacts
- What qualifies: phone call, video call, synchronous chat, in-person (async messages do not)
- One qualifying contact per calendar month required for 98979/98980/98981
- The "Log interactive contact" checkbox on the Log Time Entry form (recommended for Live Communication activity)
- Editing an entry can add or remove its linked contact; deleting the entry removes the contact too
- Where counts surface: episode This Calendar Month card, month contact counter, dashboard "Add Interaction" prompt

---

## 8. Provider Summaries

> **Nav note (July 2026):** these articles document the app's **Check-Ins** review queue, so they publish under the **Check-Ins** section (files in `check-ins/`); no standalone Provider Summaries section.

> **Architecture note (July 2026):** there is no stored summary object; everything is live-computed from unread responses (is_read flag). The old "generate/queue/status" bullets below were rewritten to match. All five articles written July 2026.

### 8.1 The Check-Ins Queue
- The live provider queue (unread vs reviewed rows), View and Send actions, bulk send
- Empty state and the appointments filter (Upload Appointments for non-EHR clinics)
- Where the counts surface (owner Unread Surveys KPI, provider action-feed pill)

### 8.2 Reviewing Daily Check-Ins
- Three entrances: email/SMS magic link (48h), dashboard pill, queue row
- Sections: today's patients, other unread comments, view-all backlog
- Patient rows: responses, flagged answers, comments, Message Patient
- Save-and-mark-read completion, guardrail prompts, reviewed state

### 8.3 Logging Time and Contacts During Review
- Pre-filled minutes (time estimate formula), billing threshold hints
- Activity type and notes per patient
- Inline Add Interactive Communication form (defaults, statuses, discard)

### 8.4 Daily Summary Emails and Texts
- What arrives (email and SMS), the 48-hour magic link
- Send timing: fixed vs hours-before-first-appointment, weekend rule, clinic timezone
- Nothing sends when nothing is unread (the "no patients" case, by design)
- Channel fallback SMS to email

### 8.5 Summary Notification Settings
- Clinic defaults (Staff Email Notifications section), owner digest, recipients
- Provider Notifications admin page and per-provider overrides
- My Settings self-service, time estimate formula

---

## 9. Billing & Claims

### 9.1 Understanding RTM Billing
- Overview of RTM CPT codes:
  - **98975**: Initial setup
  - **98976**: Device supply — respiratory system (16+ days)
  - **98977**: Device supply — musculoskeletal system (16+ days)
  - **98985**: Device supply — partial window (2-15 days)
  - **98979**: Treatment management (first 10 min)
  - **98980**: Treatment management (first 20 min)
  - **98981**: Treatment management (additional 20 min)
- How billing windows work (30-day periods)
- Interaction days, time thresholds, and qualifying services
- What counts as an interaction day (a survey answer **or** an HEP exercise completion)

### 9.2 Billing Suggestions
- How billing suggestions are auto-generated
- Understanding suggestion statuses: suggested, approved, exported, rejected, billed
- Viewing and filtering billing suggestions
- CPT code eligibility calculations

### 9.3 Approving & Rejecting Claims
- Reviewing a billing suggestion
- Approving claims (marks as approved with timestamp)
- Rejecting claims (adding a reason and notes)
- Understanding the approval workflow: Suggested → Approved → Exported/Billed

### 9.4 Clinical Notes
- Generating clinical notes for billing items
- Using clinical note templates
- Linking appointments to claims
- Note states on a claim: Missing, Draft (saved but unsigned), Signed (locked, read-only)
- Save Note / Sign Note / ReOpen Note workflow; signer and timestamp recorded on sign
- One note per claim: lives on the primary treatment line, shared by 98981 add-on lines
- Finding unsigned claims: Clinical Note column, "Needs signature" filter, Claims to sign dashboard pill, weekly email
- A signed note freezes the claim against automatic regeneration; signing is not a hard gate for export or billing

### 9.5 Exporting to DrChrono
- Sending approved claims to the EHR
- Action status tracking (pending, queued, processing, sent, failed)
- Deleting exported claims from DrChrono

### 9.6 Billing Window Progress
- Understanding the episode billing status section
- 30-day window progress toward CPT codes
- Interactive days counter
- Calendar month metrics: time logged, interactive contacts
- Progress bars and eligible code display

### 9.7 Configuring Billing Rates
- Setting per-CPT-code reimbursement rates
- Using national averages vs. custom rates
- Minimum interaction days before 98975 surfaces (clinic preference, default 2 — CMS has no minimum)

---

## 10. Appointments

### 10.1 Viewing Appointments
- Accessing the appointments page (EHR-integrated clinics only)
- Appointment list: date, patient, provider, duration, status, reason
- Filtering by date range and today view
- Appointment status badges (complete, confirmed, in room, cancelled, no show)
- Pagination options

### 10.2 Syncing Appointments
- Syncing from DrChrono (manual trigger)
- Importing appointments via CSV (non-DrChrono clinics)
- Understanding sync status and timing

---

## 11. Front Desk Check-In

> **Nav note (July 2026):** registry section renamed to `front-desk` to avoid colliding with Check-Ins (the survey queue). Publishes under an **Appointments & Front Desk** heading when written.

### 11.1 Setting Up Check-In
- Enabling the check-in page in clinic settings
- Setting an access PIN (optional, verify digit range)
- Understanding the auto-generated access key
- Configuring default appointment profiles
- Sharing the check-in URL with front desk staff

### 11.2 Using the Check-In Kiosk
- PIN verification (if configured)
- Searching for patients by name, phone, email, or appointment ID
- Filtering by provider and appointment profile
- Toggling "Show all episodes" for non-scheduled patients

### 11.3 Enrolling Patients at Check-In
- Opening the enrollment modal
- Selecting provider, survey, frequency, and communication methods
- Sending a welcome message
- Copying the survey link after enrollment

### 11.4 Managing Episodes at Check-In
- Viewing active episode settings
- Pausing an episode (with reason selection)
- Discharging an episode (with reason selection)
- Resuming a paused episode

---

## 12. Patient Portal (Patient-Facing)

### 12.1 Taking a Survey
- Accessing via magic link (SMS or email)
- Navigating through survey questions
- Auto-save behavior (answers saved automatically)
- Submitting the survey
- Thank-you confirmation page

### 12.2 Survey History & Amendments
- Viewing past survey responses
- Submitting an amendment (correction to a prior response)
- Understanding amendment tracking

### 12.3 Completing Exercises
- Accessing assigned HEP
- Following exercise instructions and video
- Marking an exercise complete and giving feedback on how it felt

---

## 13. Settings & Configuration

### 13.1 Clinic Information
- Editing clinic name, contact email, phone, website, address
- Setting timezone and business hours (opening/closing times)

### 13.2 Branding
- Uploading a clinic logo (verify format/size limits)
- Setting brand color (buttons, accents)
- Setting survey background color
- Previewing branded survey appearance
- Customizing email "From" name

### 13.3 Security Settings
- Configuring session timeout (verify range; HIPAA recommended ~15 min)
- Understanding auto-logout behavior

### 13.4 Provider Summary Settings
- Enabling/disabling provider summaries
- Setting default delivery channel (email or SMS)
- Setting default send time
- Configuring "send before first appointment" (EHR-integrated)
- Enabling clinic owner digest and selecting digest recipients

### 13.5 Provider Notification Preferences (Admin)
- Per-provider notification configuration
- Toggling summaries per provider
- Setting preferred delivery channel
- Configuring send time (fixed time or hours before appointment)
- Overriding SMS phone number

### 13.6 EMR System Selection
- Selecting your EMR system (verify the supported list in code)
- Custom EMR name entry

### 13.7 RTM Billing Settings
- 98975 minimum interaction days threshold (default 2; clinic-specific; CMS has no minimum)
- Per-code reimbursement rates

---

## 14. User Management

### 14.1 Viewing Users
- User list: name, email, role, status, last login
- Understanding user statuses (active, inactive)

### 14.2 Creating a User
- Required fields: name, email, role
- Optional: credentials (e.g., "PT, DPT")
- Available roles: Clinic Owner, Provider, Staff, Billing Staff, Auditor

### 14.3 Managing Users
- Editing user information and role
- Deactivating a user (prevents login, requires confirmation)
- Reactivating a user

---

## 15. Integrations

### 15.1 DrChrono EHR Integration
- Connecting to DrChrono via OAuth
- Understanding connection status
- Disconnecting from DrChrono

### 15.2 DrChrono Data Sync
- Manual sync trigger ("Sync Now")
- What gets synced: patients, appointments, providers, ICD-10 codes, billing profiles
- Understanding sync logs (status, records processed/created/updated/failed)
- Troubleshooting sync errors

### 15.3 DrChrono Provider Mappings
- Mapping DrChrono providers to clinic users
- Setting export defaults (default provider ID, office/location ID)
- Exam room mappings

### 15.4 Billing & Subscription (Stripe)
- Viewing your current plan
- Managing payment methods
- Viewing invoice history and downloading PDFs
- Accessing the Stripe billing portal
- Requesting cancellation

---

## 16. My Profile

> **Nav note (July 2026):** no standalone section; these publish under **Settings & Team** (files in `settings/`).

### 16.1 Changing Your Password
- Current password verification
- New password requirements
- Confirming the new password

### 16.2 Notification Preferences (Provider)
- Toggling survey summary notifications
- Setting delivery channel (email, SMS, clinic default)
- Setting send time (fixed time or hours before first appointment)
- Overriding SMS phone number

---

## 17. Compliance & Audit

> **Nav note (July 2026):** no standalone section; these publish under **Settings & Team** (files in `settings/`).

### 17.1 Activity Logging
- What gets logged: patient changes, episode changes, survey modifications, messaging, time entries
- How to access the audit trail
- Understanding event types (create, update, delete)
- User and timestamp tracking for HIPAA compliance

### 17.2 Data Retention & Soft Deletes
- How archived patients and surveys are preserved
- Soft delete behavior vs. permanent deletion
- Compliance implications

---

## 18. Workflows & Best Practices

> **Nav note (July 2026):** converted into the four role quickstarts in **Getting Started** (owner setup, provider daily loop, front desk, billing staff), written LAST so every link has a live target. The enrollment workflow was dropped as redundant with the published enrolling-a-patient article; the DrChrono sync workflow moved to Integrations.

### 18.1 Patient Enrollment Workflow
- Step-by-step: create patient → create episode → configure survey → patient receives link → completes survey → provider reviews → time logged → billing generated

### 18.2 Daily Provider Review Workflow
- Receiving the daily summary notification
- Reviewing patient data and flagged responses
- Logging review time
- Marking responses as read

### 18.3 Billing Workflow
- How billing suggestions are automatically generated
- Reviewing and approving claims
- Adding clinical notes
- Exporting to DrChrono
- Tracking claim status

### 18.4 Front Desk Check-In Workflow
- Setting up the kiosk
- Patient arrives → search → enroll or open survey → patient completes survey

### 18.5 DrChrono Sync Workflow
- Initial connection and OAuth authorization
- Syncing patient and appointment data
- Mapping providers
- Ongoing sync management

---

## 19. Troubleshooting & FAQ

### 19.1 Common Issues
- Patient not receiving survey SMS/email
- Survey link expired or invalid
- Message delivery failures
- DrChrono sync errors
- Session timeout too frequent
- Cannot create episode (existing active episode)

### 19.2 Frequently Asked Questions
- How do I change a patient's survey?
- How do I see billing eligibility for a patient?
- Can a patient have multiple active episodes?
- How do I re-send a provider summary?
- What happens when I pause an episode?
- How do I add a new provider to the system?
- What CPT codes does RTMLink support?
- How are billing suggestions calculated?
- Do home-exercise completions count toward billing?

---

## Appendix

### A. Glossary of Terms
- Episode, Window, Survey Response, Billing Suggestion, Interactive Contact, Interaction Day, Time Entry, CPT Code, ICD-10, Magic Link, Token, Flagged Response, Amendment, Provider Summary, HEP (Home Exercise Program), Adherence

### B. Role Permissions Matrix
- Table showing which features each role (Clinic Owner, Provider, Staff, Billing Staff, Auditor) can access

### C. CPT Code Reference
- Detailed explanation of each RTM CPT code with eligibility criteria and thresholds

### D. Supported Question Types
- Visual examples and configuration options for each survey question type (Scale, Yes/No, Multiple Choice, Numeric, Text)
