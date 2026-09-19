---
description: "The Appointments page in RTMLink: today's schedule at a glance, the status colors, filters, and where appointments show up across episodes, check-ins, and billing."
---

# Viewing appointments

Click **Appointments** in the left sidebar to see the clinic's schedule as a list, soonest first, so today reads from morning to evening like a day planner. Appointments flow in from your EHR or a CSV import (see [Getting appointments into RTMLink](syncing-appointments.md)); this page is where everyone reads them.

## The list

Each row shows **Date & Time**, **Patient**, **RTM**, **Provider**, **Duration**, **Status**, and the **Reason** for the visit. The **Status** badge is color-coded:

- **Confirmed** and **In Room**: blue
- **Complete**: green
- **Cancelled**: gray
- **No Show**: red

The **RTM** badge tells you where the patient stands on monitoring, so you can spot an unenrolled patient while they are still in the building:

- **Active** (green): the patient has an active episode.
- **Paused** (amber): their episode is paused.
- **Not enrolled** (gray): they have no active or paused episode.

> **RTM** reflects the patient, not the visit. It reads from their current episode, so the same patient shows the same badge on every appointment in the list.

![The Appointments page: today's schedule with patient, provider, duration, and status.](../.gitbook/assets/appointments/appointments-page.png)

## Filters

The **Today** filter is on by default, so the page opens to today's schedule. Turn it off and use **Provider** or the **From** / **Until** date range to look wider.

**RTM episode** narrows the list by monitoring status. It starts at **All patients**; choose **Active or paused episode** to see only patients already on monitoring, or **Not enrolled** to build the day's enrollment list.

If the list comes up empty, the page says **No appointments found**. The advice underneath depends on your clinic: a DrChrono clinic is pointed at **Sync from DrChrono**, and everyone else is told to import a CSV file. Either way it also suggests adjusting your date filter.

## What you can do from a row

Open the menu at the end of any row. Which items appear depends on the patient and on your role:

- **Start episode:** begins enrollment for a patient with no current episode. Not available to auditors, who are read-only.
- **View episode:** opens the patient's current episode.
- **View patient:** opens the patient's record. Always available.
- **Message patient:** opens the messaging drawer on the patient's preferred channel. Not available to billing staff or auditors.
- **Not for RTM:** records why a patient is not being enrolled, so they stop appearing on the enrollment prompt. See [Enrolling a patient](../episodes/enrolling-a-patient.md).

**Start episode** and **Not for RTM** only show for a patient with no current episode, and **View episode** only for a patient who has one, so a row offers one or the other, never both.

> Choosing **Not for RTM** asks **Why isn't this patient being enrolled?** and requires a **Note**, for example "asked at the eval, wants to revisit after the first month". Click **Save note**. It keeps the patient off the enrollment prompt until their next episode of care or evaluation visit, and you can still enroll them at any time.

## Where appointments matter elsewhere

- **The Check-Ins queue** focuses on patients with appointments today, so the morning review matches the schedule. Cancelled, rescheduled, and no-show visits are excluded.
- **The episode page** has an **Appointments** tab with a highlighted **Next Appointment** card, plus upcoming and past lists for that patient.
- **Billing**: claims can be linked to a DrChrono appointment from the claim's **Link Appointment** action, which matters when exporting. See [Exporting to DrChrono](../billing/exporting-to-drchrono.md).

## Role permissions

Everyone in the clinic can view the Appointments page. Importing and syncing are Clinic Owner actions, covered in [Getting appointments into RTMLink](syncing-appointments.md). The appointments themselves are not created or edited by hand in RTMLink; they mirror your schedule's source of truth. The row menu is the exception: it does not change an appointment, but it does start episodes, send messages, and record a **Not for RTM** note, each limited to the roles listed above.

## Related articles

- [Getting appointments into RTMLink](syncing-appointments.md)
- [The Check-Ins queue](../check-ins/the-check-ins-queue.md)
- [Viewing episode details](../episodes/viewing-episode-details.md)
