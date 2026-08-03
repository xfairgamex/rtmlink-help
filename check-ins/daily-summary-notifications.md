---
description: "How RTMLink's daily summary emails and texts work: what providers receive, when messages send, the 48-hour magic link, and why a provider with nothing to review gets no message at all."
---

# Daily summary emails and texts

Every morning, RTMLink rounds up each provider's unread patient responses and delivers a summary by email or text, with a link that opens their review page already signed in. This guide explains what arrives, when, and the quiet rule that surprises people: no unread responses means no message.

## What providers receive

The email subject follows the pattern "Daily Summary: 3 patients, 7 responses (2 comments)". Inside, a short summary tells the provider how many patients and responses are waiting, how many of those responses include a written comment to read, and an estimated review time, followed by a **Review and Log Time** button. The text-message version carries the same counts and link in one line.

The link is a personal sign-in link: it opens the provider's review page directly, no password prompt, and stays valid for 48 hours. After it expires the link lands on the clinic login page instead, and signing in normally still gets you there.

## When messages send

- Each provider has a send time: a **fixed time each day** (the clinic default is 8:00 AM in the clinic's timezone) or a set number of **hours before their first appointment** of the day.
- RTMLink checks every few minutes and sends each provider's summary once their time arrives. One summary per provider per day.
- On weekends, summaries are skipped unless the clinic actually has appointments that day.
- A provider set to "hours before first appointment" who has no appointments that day is skipped.

All of this is configurable per clinic and per provider; see [Summary notification settings](summary-notification-settings.md).

## When nothing sends (and why that is correct)

A provider only receives a summary when they have unread responses waiting. If nothing is unread (or the provider has no assigned patients yet), RTMLink sends nothing at all rather than an empty email, and that provider does not appear on the Check-Ins queue either.

> **"My provider never gets the summary email."** Nine times out of ten this is the rule above doing its job: the provider has no unread responses at send time, often because they have no patients assigned yet or someone else already reviewed them. Assign the provider to an active episode and the summaries begin with the next unread response.

## Delivery channel

Each provider's summary goes out by email or SMS, following their personal preference or the clinic default. If SMS is chosen but no phone number is on file, RTMLink falls back to email rather than dropping the message.

## Role permissions

Delivery settings are managed by Clinic Owners (clinic-wide and per provider) and by each provider for themselves. Any staff member can also push a summary on demand from the Check-Ins queue.

## Related articles

- [Summary notification settings](summary-notification-settings.md)
- [Reviewing daily check-ins](reviewing-daily-check-ins.md)
- [The Check-Ins queue](the-check-ins-queue.md)
