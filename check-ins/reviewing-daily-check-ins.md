---
description: "How a provider works through their daily review page in RTMLink: opening it from the email, the dashboard, or the Check-Ins queue, reading each patient's responses, and marking everything read in one save."
---

# Reviewing daily check-ins

The review page is where a provider works through the day's patient responses in one sitting: read what came in, log the review time, and mark it all read with a single button. This guide walks the page itself; the time and contact logging get their own guide in [Logging time and contacts during review](logging-time-during-review.md).

## Three ways in

- **The daily email or text**: the summary message's **Review & Log Time** button opens your review page directly, already signed in. The link works for 48 hours; after that it lands on the login page, and logging in takes you through.
- **The dashboard**: providers see a **Surveys to review** pill in **Your Action Feed** counting their own patients' unread responses.
- **The Check-Ins queue**: anyone opening a provider's row lands here. See [The Check-Ins queue](the-check-ins-queue.md).

The page is titled with the provider's name followed by "Survey Summary", dated for today, with a stats line of patients, responses, and comments underneath.

## What the page shows

- **Today's Patients**: the main list. When the clinic has appointment data, it focuses on patients seen today; each row also shows the appointment time and status.
- **Other Unread Comments**: patients not seen today whose responses include unread free-text comments, so written notes never sit unnoticed.
- A banner at the bottom counts anything else outstanding and offers **View All Unread Surveys** to review the full backlog in one list.

## Working a patient row

Each row is one patient:

1. The badges tell you what is inside: a count of responses, plus a **Comments** badge when the patient wrote something.
2. Click **View All Responses** to expand the answers, question by question, with flagged answers called out. **Hide Responses** collapses it again.
3. **Message Patient** opens the messaging composer right from the row (a red badge shows unread patient messages).
4. The minutes box and the interactive-communication controls on the row are covered in [Logging time and contacts during review](logging-time-during-review.md).

## Finishing the review

At the bottom of each section, a total line sums your minutes, and one button completes the section: **Save Today's Time and Mark as Read** (or the equivalent for the other-unread and view-all lists).

Before saving, the page guards against two easy misses:

> **Missing interactive contacts.** If any reviewed patient has no interactive communication this month, the page asks: "You have patients without interactive communications this month. Would you like to go back and add them?" You can go back or continue.

> **An unsaved communication form.** If you opened the communication form on a row and never logged it, the page asks whether to log it, discard it, or go back before it saves anything.

Saving records a time entry per patient, marks their responses read, and shows **Time Logged Successfully**. Rows you already reviewed earlier today stay visible in a read-only state with a check and the minutes you logged, and the page header reads **All Surveys Reviewed** once nothing is left.

Back on the Check-Ins queue, the provider's row flips to **Reviewed** with today's read count, and the unread numbers on the dashboard fall accordingly.

## Role permissions

A **provider** can open only their own review page. A **clinic owner** can open any provider's review page. Everyone else (staff, billing staff, and auditors) gets a permission error, even from a direct link.

## Related articles

- [The Check-Ins queue](the-check-ins-queue.md)
- [Logging time and contacts during review](logging-time-during-review.md)
- [Understanding survey responses](understanding-survey-responses.md)
- [Messaging a patient](../patients/messaging-a-patient.md)
