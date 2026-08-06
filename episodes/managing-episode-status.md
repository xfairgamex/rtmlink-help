---
description: How to pause, resume, discharge, and reopen an RTM episode in RTMLink, including the available reasons and what each change does to monitoring and billing.
---

# Managing episode status

An episode moves through a few states over its life: **Active**, **Paused**, **Discharged**, and **Completed**. You change between them with four actions: **Pause**, **Resume**, **Discharge**, and **Reopen**.

## Where to find these actions

Most status changes are on the **Episodes** list. Open the actions menu on the episode's row (the **⋯** button at the end of the row) and choose the action you need. When you have an episode open, you can also resume a paused one with the **Resume Episode** button at the top of the page.

The actions you see depend on the episode's current status. For example, **Pause** only appears on active episodes, **Discharge** is available on both active and paused episodes, and **Reopen** only appears on closed ones.

## Pausing an episode

Pause when monitoring needs to stop temporarily. While paused, **no surveys are sent**.

1. From the episode's actions menu, choose **Pause**.
2. Select a **Reason**:
   - Patient requested
   - Hospitalization
   - Vacation
   - Insufficient data
   - Insurance change
   - Other
3. Add **Notes** (required if you chose **Other**).
4. Confirm.

## Resuming an episode

When the patient is ready to continue, resume the episode to start surveys again.

- From the actions menu choose **Resume**, or open the episode and click **Resume Episode**.

The episode returns to **Active** and surveys resume on the original schedule.

## Discharging an episode

Discharge when monitoring is finished. This **closes the current billing window** and ends the episode.

> **Discharging a paused episode.** You can discharge an episode that is currently paused without resuming it first. This is useful when a patient will not return to monitoring (for example, after a hospitalization from which they are not continuing RTM).

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

> **A patient can have only one open episode.** If the patient already has another episode that is **Active** or **Paused**, RTMLink will not reopen this one. You see the message "Cannot reopen this episode," with the note "This patient already has an active or paused episode. Continue care there, or close it first." Continue care on the episode that is already open, or discharge it first if you genuinely need to reopen this one.

> **Reopen vs. a new episode.** Reopen continues the *same* episode and its existing billing windows. If the patient is starting a genuinely new course of care, enroll them in a fresh episode instead. See [Enrolling a patient](enrolling-a-patient.md).

## Related articles

- [Understanding episodes](understanding-episodes.md)
- [Viewing episode details](viewing-episode-details.md)
- [Episode actions](episode-actions.md)
