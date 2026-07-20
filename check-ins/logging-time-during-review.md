---
description: "Logging provider time and interactive communications while reviewing daily check-ins in RTMLink: the pre-filled minutes, the billing hints, and the inline Add Interactive Communication form."
---

# Logging time and contacts during review

The review page does more than display responses: every patient row carries a minutes box and a communication logger, so the billable work of reviewing gets recorded in the same motion. Everything saved here becomes a real time entry (and, when logged, a real interactive contact) on the patient's episode, exactly as if you had entered it there.

## The minutes box

Each patient row pre-fills a minutes estimate based on how much there is to review (your clinic tunes the formula in [Summary notification settings](summary-notification-settings.md)). Adjust it freely from 1 to 120 minutes.

A hint under the box shows where the month stands for that patient's treatment billing, for example **2 more min to reach 98979 (10 min)** or the equivalent for `98980` and `98981`. It is a nudge, not a gate; log the time you actually spent.

Expanding the row's details also lets you change the **Activity Type** (it defaults to reviewing patient data) and edit the note attached to the entry.

## Logging an interactive communication

Treatment codes need at least one live contact with the patient each calendar month, and the row's status chip tells you where that stands:

- **No interactive comm this month**: click it to open the inline form.
- **Unsaved communication below** (amber): you opened the form but have not logged it yet.
- A green check with **Interactive comm logged**: the month is covered.

The **Add Interactive Communication** form keeps it to three fields, pre-filled for the common case: **Type** (Phone call, Video call, Synchronous chat, or In-person), **Minutes** (defaults to 5), and **Date & Time** (defaults to now, in the program timezone). Add notes if you like, then click **Log Communication**. **Discard** closes the form without saving.

> Logging here creates the same linked time entry and interactive contact you would get from the episode's **Time Tracking & Interactions** section. See [Logging interactive contacts](../episodes/logging-interactive-contacts.md) for that path and the qualifying rules.

## Saving it all

The section's save button (for example **Save Today's Time and Mark as Read**) writes one time entry per patient and marks their responses read in a single step. If a communication form is still open, or a reviewed patient has no contact this month, the page prompts you before completing; you can go back, log what is missing, or continue anyway.

After saving, the minutes and contacts appear on each episode's **Time Tracking & Interactions** section and count toward the month's treatment billing, visible on the **This Calendar Month** card.

## Role permissions

Whoever can open the review page can log from it: the provider themselves, or a Clinic Owner or admin working a provider's queue. Entries are recorded against the reviewing provider.

## Related articles

- [Reviewing daily check-ins](reviewing-daily-check-ins.md)
- [Logging interactive contacts](../episodes/logging-interactive-contacts.md)
- [Billing window progress](../billing/billing-window-progress.md)
