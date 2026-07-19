---
description: "How patients answer surveys in RTMLink and how to review responses: the magic link, response statuses, what counts as an interaction, flagged answers, and where responses appear on the episode."
---

# Understanding survey responses

A **response** is one patient's answers to one day's survey. This article covers how patients submit responses and how you review them.

## How patients answer

Patients don't need an app or a password. On schedule, RTMLink sends each patient a personal **survey link** by SMS or email. Tapping it opens that day's check-in, where:

- Every question is **optional**; the patient can answer what's relevant and skip the rest.
- Answers **save automatically** as they go, so a patient can close the link and come back later without losing progress.
- Submitting finishes the response and shows a thank-you page.

## Response statuses

| Status | What it means |
|--------|---------------|
| **Pending** | The link was sent but the patient hasn't started. |
| **In progress** | The patient started and saved at least one answer, but hasn't submitted. |
| **Completed** | The patient submitted the response. |
| **Expired** | The link's window passed before the patient finished. |

## What counts as an interaction

For billing, what matters is whether the patient *engaged*. A response counts as an **interaction** if it's **Completed**, or if it's **In progress with at least one saved answer**. Simply opening the link without answering anything does **not** count.

This is the same rule behind interaction days and unread counts across RTMLink, so the numbers always line up. See [Understanding episodes](../episodes/understanding-episodes.md#30-day-billing-windows) for how interaction days drive billing.

## Reviewing responses on the episode

Open an episode and find the **Patient Responses** section. By default it lists responses that counted as interactions. Use the **Show all** toggle to also see pending link-sends and opened-but-empty surveys.

Click any response to open it. You'll see:

- **Every question and the patient's answer**, formatted for easy reading (a scale shows as "7 / 10", a choice shows its label).
- **Exercise feedback** the patient gave that same day, if they're on a home exercise program: how each exercise felt, any pain, and notes.
- A **Read** / **Unread** badge.

> Opening a completed, unread response **marks it as read** automatically and removes it from your unread count; no extra click needed.

## Flagged answers

If an answer crosses an alert threshold set on the survey question, RTMLink **flags** the response:

- The response shows a **flag**, and the specific answer is highlighted.
- Each flag carries the **severity** (low, medium, or high) and any alert message you wrote when [building the survey](creating-a-survey.md#flagging-answers-with-alerts).

Flags help you triage. From the **Episodes** list, the **Attention** filter surfaces episodes with **flagged unread responses** so the most pressing ones rise to the top. See [Episode search & filters](../episodes/episode-search-and-filters.md#the-attention-filter).

## Scanning answers without opening each response

Questions marked **Featured** appear as their own columns in the episode, so you can scan a key value (like the day's pain score) across many days at a glance, then open only the responses that warrant a closer look.

## Related articles

- [Understanding surveys](understanding-surveys.md)
- [Survey amendments](survey-amendments.md)
- [Viewing episode details](../episodes/viewing-episode-details.md)
- [Episode search & filters](../episodes/episode-search-and-filters.md)
