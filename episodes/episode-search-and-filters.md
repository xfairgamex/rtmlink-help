---
description: "How to find episodes in RTMLink: searching by patient, provider, or survey, reading the episode list columns, and using filters like Attention, Status, and Time."
---

# Episode search & filters

The **Episodes** list is where you find and triage everyone the clinic is monitoring. By default it shows your **Active** episodes, newest first. Search and filters help you zero in on the patients who need you.

![The Episodes list, with search and filters across the top.](../.gitbook/assets/episodes/episode-list.png)

## Searching

Use the search box at the top of the list (**Search patients, providers, surveys…**). It matches on:

- **Patient:** first name, last name, nickname, email, phone, or date of birth (try `M/D/YYYY`).
- **Provider:** name or email.
- **Survey:** the assigned survey's name.
- **Episode name:** if you've given the episode a custom name.

You can type more than one word, for example a first and last name together.

## Reading the columns

| Column | What it shows |
|--------|---------------|
| **Patient** | The patient's name (click to open the episode). |
| **Status** | Active, Paused, Completed, or Discharged. |
| **Start Date** | When the episode began. |
| **Unread** | Completed survey responses you haven't read yet. |
| **Window Start** | The start date of the current 30-day window. |
| **Check-ins** | Days the patient has engaged in the current window. |
| **Time (Month)** | Provider time logged this calendar month. |
| **Provider** | The assigned provider. |
| **Next Apt** | The patient's next appointment (shown only when an EHR is connected). |

Click a column heading to sort by it.

> The **Time (Month)** column counts only billable provider time and always follows the calendar month, so it matches the month-to-date figures on the episode's billing cards and what the clinic can bill for the treatment-management codes.

## Filters

Click **Filter** to narrow the list. The available filters are:

- **Status:** Active (the default), Paused, Completed, or Discharged.
- **Provider:** show one provider's episodes.
- **Survey:** show episodes using a particular survey.
- **Attention:** surface episodes that need a look (see below).
- **Time (This Month):** by provider time logged: `0m`, `< 20m`, `20m+`, or `60m+`.
- **Communication:** SMS, Email, or both.
- **Undeliverable phone:** episodes whose patient's number has had a delivery failure.
- **Start Date:** enrolled within a date range (**From** / **To**).

## The Attention filter

The **Attention** filter helps you find episodes that may need follow-up:

- **Unread surveys:** has completed responses you haven't read.
- **Flagged unread responses:** has unread responses that tripped an alert (e.g. a high pain score).
- **No check-ins (3+ days):** an active or paused episode with no completed response in the last three days.
- **High risk:** the episode is marked high risk.

> The same signals power the **Needs Attention** panel on your dashboard, so you can start your day there and drill into the Episodes list for the details. See [Navigating the dashboard](../getting-started/navigating-the-dashboard.md).

## Related articles

- [Viewing episode details](viewing-episode-details.md)
- [Episode actions](episode-actions.md)
- [Navigating the dashboard](../getting-started/navigating-the-dashboard.md)
