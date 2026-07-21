---
description: "How provider time works in RTMLink: what counts, where to log it, the activity types, and how minutes turn into billable treatment-management claims."
---

# Understanding time tracking

Provider time is half of what makes an RTM month billable: the treatment-management codes are earned by minutes logged plus at least one live contact with the patient. This article explains how time tracking works and where to record it.

## What counts

Time you spend managing a patient's RTM care counts: reviewing their check-in data, adjusting their plan, coordinating care, documenting, and talking with them. RTMLink offers an activity type for each so your entries describe the work:

Review of Patient-Generated Data, Development/Revision of Care Plan, Patient Education and Training, Care Coordination, Clinical Documentation, Async Communication, Live Communication (Phone/Video Call), Response to Alerts/Flags, and Treatment Modification.

## Where to log it

There are two places, and they write the same entries:

- **On the episode.** Open the patient's episode and use the **Time Tracking & Interactions** section: **Add** for a manual entry, or **Start Timer** to time yourself and log the elapsed minutes when you stop. See [Logging interactive contacts](logging-interactive-contacts.md), which walks the Log Time Entry form field by field.
- **During your daily review.** Each patient row on the review page has a minutes box pre-filled with an estimate, so you log as you read. See [Logging time and contacts during review](../check-ins/logging-time-during-review.md).

## Editing and removing entries

Entries are listed under the Time Tracking & Interactions section. Click one to reopen it and change the activity, duration, or notes, or delete it. Deleting an entry also removes any interactive contact attached to it, and the month's totals update immediately.

## How minutes become claims

Minutes accumulate per patient per calendar month. Once the month has enough minutes **and** at least one interactive contact, the treatment-management codes become billable:

| Code | Needs |
| --- | --- |
| `98979` | 10+ minutes, plus an interactive contact |
| `98980` | 20+ minutes, plus an interactive contact |
| `98981` | each additional full 20 minutes |

The episode's **This Calendar Month** card shows where the month stands. See [Billing window progress](../billing/billing-window-progress.md).

> Minutes are counted per patient, not per episode: if a patient has more than one episode in a month, RTMLink adds the time together into a single monthly claim.

## Related articles

- [Logging interactive contacts](logging-interactive-contacts.md)
- [Logging time and contacts during review](../check-ins/logging-time-during-review.md)
- [CPT code reference](../reference/cpt-code-reference.md)
