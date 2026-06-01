---
description: How to enroll a patient in Remote Therapeutic Monitoring — choosing a provider and survey, setting the schedule and communication methods, and sending the first survey.
---

# Enrolling a patient

Enrolling a patient starts an **episode** — the course of monitoring during which they receive surveys and the clinic tracks their progress. The patient must already exist in RTMLink before you can enroll them; see [Creating a new patient](../patients/creating-a-new-patient.md).

## Two ways to start an episode

- **From the patient's record:** open the patient and click **Start Episode**. The patient is filled in for you, along with their provider and contact preferences.
- **From the Episodes list:** click **Episodes** in the left sidebar, then **Create** (or **Enroll a patient** on a clinic with no episodes yet), and choose the patient.

Both open the same enrollment form.

## Filling in the enrollment form

### Enrollment

- **Patient** — required. Search by name. If the patient already has an active or paused episode, RTMLink won't let you enroll them again — you'll see a message telling you so. If they have a *paused* episode, a notice appears with a link to view it.
- **Assigned Provider** — required. The provider responsible for this episode. When you pick a patient who has a primary provider, this fills in automatically; you can change it. The list includes your clinic's providers and owners.
- **Start Date** — required. Defaults to today and **can't be in the future**. This is the day monitoring begins and the day the first 30-day window starts. You can't change the start date after the episode is created.

### Survey & Schedule

- **Survey** — required. The set of questions the patient answers. Your clinic's default survey is pre-selected; you can switch to any other active survey.
- **Frequency** — how often the survey is sent. Choose **Every day**, **Every other day**, or **Weekdays only**. Defaults to **Every day**.
- **Send Time** — the time of day the survey link goes out, in the patient's timezone. Defaults to **10:00**.
- **Communication Methods** — required (pick at least one): **SMS**, **Email**, or both. This is pre-filled from the patient's consent settings — SMS if they've consented to texts, Email if they have an email on file and have consented. Survey links and messages go out through the methods you select here.
- **Send Welcome Message Now** — on by default. When on, the patient gets their first survey right away. Turn it off to wait until the next scheduled send time instead.

### Notes

An optional free-text box for anything you want recorded on the episode.

> **Adding clinical details:** Diagnosis code, ICD-10 codes, body part, treatment type, and a custom episode name aren't on the enrollment form. You can add them afterward by opening the episode and choosing **Edit**.

## Finishing up

Click **Create** to enroll the patient. RTMLink:

1. Creates the episode and sets it to **Active**.
2. Opens the first 30-day billing window starting on the start date.
3. Sends the first survey immediately if **Send Welcome Message Now** was on.

You'll land on the new episode's detail page, where you can see responses come in, log time, and track billing progress.

## Related articles

- [Understanding episodes](understanding-episodes.md)
- [Viewing episode details](viewing-episode-details.md)
- [Editing episode settings](episode-actions.md)
- [Creating a new patient](../patients/creating-a-new-patient.md)
