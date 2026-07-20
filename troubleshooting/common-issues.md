---
description: "The RTMLink behaviors that look like problems but usually aren't, and how to tell a real issue from expected behavior."
---

# Common issues

Several things in RTMLink look broken at first glance but are working as designed. This guide covers the ones that come up most, so you can tell expected behavior from a genuine problem.

## A provider never gets their daily summary email

RTMLink only sends a provider's summary when they have unread patient responses at send time. No unread responses means no email, by design, rather than an empty message. Usually the provider simply has no patients assigned yet, or someone already reviewed them. Assign the provider to an active episode and their summaries begin with the next unread response. See [Daily summary emails and texts](../check-ins/daily-summary-notifications.md).

## A patient is not receiving texts

- The number may be a **landline**, which cannot receive texts. The episode form flags this; switch the patient to email or update the number.
- The number may have been marked **undeliverable** by the carrier. The Episodes list shows a banner counting these; update the contact info from there.
- The patient may have texted **STOP**, which opts them out at the carrier level. They must text START to resume; you cannot re-enable it from your side.

See [Managing conversations](../messaging/managing-conversations.md).

## No billing suggestion has appeared

Billing suggestions surface only when their requirements are met:

- **Device-supply codes** (`98977`, `98985`) appear only after the 30-day window closes, and need enough interaction days.
- **Treatment-management codes** (`98979`, `98980`, `98981`) need enough provider minutes in the month **and** at least one interactive contact. If minutes are logged but no suggestion appears, a missing interactive contact is the usual reason.

See [Billing window progress](../billing/billing-window-progress.md).

## A multi-episode patient has only one treatment claim

This is correct. Treatment-management codes bill once per patient per calendar month, aggregating activity across all of that patient's episodes into a single claim. See [Understanding RTM billing](../billing/understanding-rtm-billing.md).

## The Integrations page is missing from the sidebar

The Integrations page appears only when your clinic's EMR is set to DrChrono. Set **EMR / EHR System** to DrChrono in Clinic Settings and it appears. See [Connecting DrChrono](../integrations/connecting-drchrono.md).

## A note cannot be signed

A clinical note cannot be signed while it is empty; add the note text first. Providers can also only sign notes for their own assigned patients. See [Clinical notes and sign-off](../billing/clinical-notes.md).

## Related articles

- [Frequently asked questions](frequently-asked-questions.md)
- [Managing conversations](../messaging/managing-conversations.md)
- [Billing window progress](../billing/billing-window-progress.md)
