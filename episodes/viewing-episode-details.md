---
description: A tour of the episode detail page in RTMLink: the patient summary, current 30-day window progress, survey settings, responses, time tracking, billing status, and the four detail tabs at the bottom.
---

# Viewing episode details

The episode detail page is your hub for a single patient's monitoring. It shows who's being monitored, how the current billing window is progressing, the survey schedule, every response, and where the episode stands for billing.

## Opening an episode

Click **Episodes** in the left sidebar to see your episodes, then click a patient's name to open their episode. You can also reach an episode from the patient's record by choosing **View Episode**.

![The Episodes list: each row is one patient's RTM episode. Click a name to open it.](../.gitbook/assets/episodes/episode-list.png)

## The summary rail

Down the side of the page you'll find at-a-glance cards:

### Patient

- **Patient:** name, linked to their full record.
- **Provider:** the assigned provider.
- **Start Date:** when the episode began.
- **Pause Reason:** shown only while the episode is paused.
- **Discharge Date:** shown only after the episode is discharged or completed.
- **ICD-10 Codes:** diagnosis codes recorded on the episode, if any.

### This Window

The current 30-day billing window's progress:

- **Window:** which window the episode is in (Window 1, Window 2, ...).
- **Date Range:** the window's start and end dates.
- **Billing Status:** where this window stands for billing.
- **Progress**, **Days with Response**, **Minutes Tracked**, **Interactive Contacts:** the running totals that RTM codes are measured against.

### Stats

- **Surveys Answered (Window):** completed responses in the current window.
- **Time Tracked (Month):** provider time logged this calendar month.

### Survey Settings

- **Assigned Survey**, **Frequency**, **Send Time**, **Communication Methods:** the schedule set at enrollment. See [How often surveys are sent](enrolling-a-patient.md#how-often-surveys-are-sent).
- **Survey Link:** the patient's personal survey link. Click the copy icon to copy it (handy for reading the link to a patient over the phone).

## The working area

The main part of the page is where you do the day-to-day work:

- **Patient Responses:** recent survey responses and exercise feedback. Flagged answers are highlighted so you can spot anything that needs attention. See [Understanding survey responses](../surveys/understanding-survey-responses.md).
- **Time Tracking & Interactions:** log provider time and record interactive contacts (phone, video, in-person) against the episode.
- **Billing Status:** CPT-code eligibility and how the current window is tracking toward each code.

## Detail tabs

Below the working area, four tabs let you view and manage more episode data:

- **Appointments:** upcoming and past appointments linked to this patient.
- **Billing Claims:** all billing claims generated for this episode. Click any row to open the full claim detail: CPT code, billing period, service date, qualification evidence, clinical note, and workflow history. Users with billing approval access also see two actions in the tab header:
  - **Add Claim:** manually enter a claim for a code the system did not derive automatically. Manual claims are marked Ready to Bill and are never overwritten by automatic regeneration.
  - **Regenerate Claims:** re-evaluate all billing data for this episode. Stale claims (suggested, approved, or rejected) that no longer qualify are removed; new qualifying claims are created. Claims that have been exported, billed, or have a signed clinical note are never affected.
- **Exercises:** exercises assigned to this episode. See [Assigning HEP to an episode](../exercises/assigning-hep-to-an-episode.md).
- **Windows:** the full history of 30-day billing windows. Click any row to see its detail: window number, date range, status, interaction days, minutes reviewed, interactive contacts, and the billable codes that were earned.

> **Note:** The **Billing Claims** tab shows a banner describing when device-supply claims (98985 for 2-15 interaction days, 98977 for 16 or more) will surface. Those claims are generated after the 30-day window closes, so you typically see this tab mid-window with no claims listed yet.

## Related articles

- [Understanding episodes](understanding-episodes.md)
- [Managing episode status](managing-episode-status.md)
- [Episode actions](episode-actions.md)
- [Understanding survey responses](../surveys/understanding-survey-responses.md)
