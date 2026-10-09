---
description: How to stop surveys or RTM billing on an episode, discharge it, and reopen it in RTMLink, including the available reasons and what each change does to monitoring and billing.
---

# Managing episode status

An episode is in one of three states over its life: **Active**, **Discharged**, or **Completed**. You close an episode with **Discharge** and bring a closed one back with **Reopen**.

To stop texts or billing for a while without closing the episode, use the **Surveys** and **Enrolled in RTM** switches on the episode instead. See [Stopping surveys or RTM billing temporarily](#stopping-surveys-or-rtm-billing-temporarily) below.

## Where to find these actions

Status changes are on the **Episodes** list. Open the actions menu on the episode's row (the **⋯** button at the end of the row) and choose the action you need.

The actions you see depend on the episode's current status: **Discharge** only appears on active episodes, and **Reopen** only appears on discharged or completed ones.

## Stopping surveys or RTM billing temporarily

There is no separate "pause" state. When a patient needs a break (a vacation, a hospital stay, an insurance change), keep the episode **Active** and turn off what should stop:

1. Open the episode and click **Edit**.
2. Turn off the switch you need:
   - **Surveys:** stops survey texts. If your clinic uses home exercises, exercise reminders can keep going so the patient still gets a link to their program. To stop all texts, also set **How often** to **No reminders**.
   - **Enrolled in RTM:** stops RTM billing. Set the **RTM end date** (it defaults to today). The current 30-day window still closes on schedule and counts only the days recorded up to the end date. No new billing suggestions are created after that, and any you already have are kept.
3. Save.

When the patient is ready to continue, edit the episode again and turn the switch back on. For RTM, the **RTM start date** stays the same unless you change it.

> **Surveys can only be turned off once exercises are enabled for your clinic.** If exercises are off, the **Surveys** switch can't be changed.

You can see which switches are on at a glance: on the **Episodes** list, hover over the **Status** badge to see **Surveys** (On or Off) and **RTM** (Active or Disabled). On the episode's own page, a small **Surveys off** or **Billing off** note appears next to the status.

> **At the front desk.** Staff using the front desk can change the same switches. Open the patient's **Manage** menu, check or uncheck **Surveys** or **RTM billing** on the **Settings** tab, and click **Save Changes**. See [Enrolling and managing at check-in](../front-desk/enrolling-and-managing-at-check-in.md).

## Discharging an episode

Discharge when monitoring is finished. This **closes the current billing window** and ends the episode.

1. From the actions menu, choose **Discharge**.
2. Select a **Reason**:
   - Completed
   - Patient request
   - Non-compliance
   - Medical
   - Other
3. Add **Notes** (required if you chose **Other**). Discharge notes are saved to the episode for the record.
4. Confirm.

> **"Completed" vs. "Discharged."** Choosing **Completed** marks the episode as **Completed** (the positive close when a course of care finishes as planned). Any other reason marks it **Discharged**. Both end monitoring; the difference is how the episode is labeled in your records and reports.

## Reopening an episode

If an episode was discharged or completed by mistake, or the patient returns to the same course of care, you can reopen it.

1. Find the episode (filter the Episodes list by **Discharged** or **Completed** status).
2. From the actions menu, choose **Reopen**.
3. Optionally add **Notes**.
4. Confirm.

The episode returns to **Active** and its most recent billing window is reopened.

> **RTM can only be billed on one episode at a time.** A patient can have more than one open episode, but only one of them can be enrolled in RTM. If the episode you are reopening was enrolled in RTM and the patient already has another open episode enrolled in RTM, RTMLink will not reopen it and shows **Cannot reopen this episode**. Turn off **Enrolled in RTM** on the other open episode (or discharge it) first, then reopen this one.

> **Reopen vs. a new episode.** Reopen continues the *same* episode and its existing billing windows. If the patient is starting a genuinely new course of care, enroll them in a fresh episode instead. See [Enrolling a patient](enrolling-a-patient.md).

## Related articles

- [Understanding episodes](understanding-episodes.md)
- [Viewing episode details](viewing-episode-details.md)
- [Episode actions](episode-actions.md)
