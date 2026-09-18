---
description: "The Seeing you today, not on RTM prompt: catching patients on today's schedule who are not enrolled, enrolling them in a click, or recording why not."
---

# Seeing you today, not on RTM

RTMLink puts the patients on today's schedule who are not on monitoring in front of the provider who is about to see them, so the conversation happens in the room instead of a week later. The prompt is headed **Seeing you today, not on RTM** with a count of how many are waiting, and every row offers two answers: enroll them, or record why not.

## Where you see it

- **Your review page:** at the top of your survey review page, above **Today's Patients**, showing the full list.
- **The dashboard:** inside **Your Action Feed**, in a shorter form. It shows the first five and, if there are more, a line reading **and N more on today's schedule.**

Providers see their own list. A Clinic Owner opening a provider's review page sees that provider's list.

## Who appears on the list

A patient is listed when all of these are true:

- They have a visit on today's schedule.
- They have no active or paused episode.
- There is no reason on file for skipping them (see **Not for RTM** below).

Cancelled, rescheduled, no-show, and self-pay visits are left out. Evaluation visits sort to the top of the list and carry an **Evaluation** badge, because an eval is the natural moment to start monitoring; every other row shows the visit reason instead. The rest sort by appointment time.

> **Whose list does a patient land on?** The clinician on the visit, and if the visit does not name one, the provider mapped to it, and failing that the patient's primary provider. A visit that matches nobody is shown to nobody, so if you expect a patient and do not see them, ask your Clinic Owner to map the clinician under **Integrations** > **Unmapped EMR providers**.

## Enrolling from the prompt

Click **Enroll** next to the patient. That opens the new episode form with the patient already filled in, and enrollment continues exactly as it does anywhere else. See [Enrolling a patient](../episodes/enrolling-a-patient.md).

## Recording a reason instead

When monitoring is not right for this patient, click **Not for RTM**. RTMLink asks **Why isn't this patient being enrolled?** and requires a **Note** in your own words, for example "asked at the eval, wants to revisit after the first month". Click **Save**. A confirmation reads that the patient is marked not for RTM, and they come off your list.

The note matters, so the app will not accept an empty one: it is the only record of the decision, and your Clinic Owner reads it to understand the clinic's enrollment rate.

> **A reason mutes the prompt, it never closes the door.** You can still enroll the patient at any time from their record. The prompt brings them back when they start a new episode of care, or when they come in for an evaluation visit on a later day. It is not a timer, so a reason does not simply expire after a set number of days.

If someone was passed over before, their row shows it: **Previously not enrolled**, the date, who recorded it, and their note. That way the next provider to see the patient knows what was already discussed rather than asking again. Each decision adds to the history; enrolling the patient later does not erase it.

## When the list is empty

The prompt disappears entirely when nobody on today's schedule needs a decision. On the dashboard, note that **Your Action Feed** only tells you that you are all caught up once this list is clear too, so unenrolled patients on today's schedule keep the feed open even when your reviews and claims are done.

## Role permissions

The prompt lives on the two screens a provider works from, so only two roles reach it:

| Action | Clinic Owner | Provider | Staff | Billing Staff | Auditor |
|--------|:-:|:-:|:-:|:-:|:-:|
| See the prompt | Yes | Yes | No | No | No |
| Enroll | Yes | Yes | No | No | No |
| Not for RTM | Yes | Yes | No | No | No |

A Clinic Owner sees it on any provider's review page; a provider sees their own list, on their review page and on their dashboard. Staff, billing staff, and auditors cannot open a provider's review page and do not get the provider dashboard feed, so the prompt never reaches them. Staff who want the same view of who is unenrolled today can use the **RTM episode** filter on the Appointments page instead; see [Viewing appointments](../appointments/viewing-appointments.md).

## Related articles

- [Enrolling a patient](../episodes/enrolling-a-patient.md)
- [Reviewing daily check-ins](reviewing-daily-check-ins.md)
- [Viewing appointments](../appointments/viewing-appointments.md)
- [Navigating the dashboard](../getting-started/navigating-the-dashboard.md)
