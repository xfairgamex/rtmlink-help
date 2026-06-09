---
description: What an episode is in RTMLink (a patient's remote-monitoring engagement period) and how episode status and 30-day billing windows work.
---

# Understanding episodes

An **episode** is a patient's Remote Therapeutic Monitoring (RTM) engagement: the period during which they receive surveys, you track their progress, and the clinic can bill for monitoring. Almost everything in RTMLink hangs off the episode.

## What an episode represents

When you enroll a patient, you create an episode. It has a **start date** (when monitoring begins) and, eventually, a **discharge date** (when monitoring ends). While the episode is running, RTMLink sends the patient surveys on the schedule you set, collects their responses, and keeps a running tally of everything that counts toward billing.

An episode ties together everything about that course of monitoring:

- The **patient** being monitored and the **provider** responsible for them.
- The **survey** they receive and how often it's sent.
- Their **responses**, any **exercises** assigned, and the **time** providers log reviewing their data.
- The **billing windows** that track progress toward each RTM code.

> **One active episode per patient at a time.** A patient can't be enrolled twice simultaneously. If a patient already has an active or paused episode, RTMLink won't let you start a new one until the current one is discharged. A patient can have several episodes over time, one after another, just not two at once.

## Episode status

Every episode is in one of four states:

| Status | What it means |
|--------|---------------|
| **Active** | Monitoring is running. Surveys go out on schedule and progress is tracked. |
| **Paused** | Monitoring is temporarily on hold. No surveys are sent until you resume. |
| **Discharged** | Monitoring has ended. The episode is closed but kept for the record. |
| **Completed** | Monitoring ended because the course of care finished (a positive outcome). |

You move an episode between these states with the **Pause**, **Resume**, **Discharge**, and **Reopen** actions. See [Managing episode status](managing-episode-status.md) for how and when to use each.

## 30-day billing windows

RTM billing is organized into **30-day windows**. The first window (**Window 1**) starts on the episode's start date and runs for 30 days. When it ends, the next window begins automatically, and so on for as long as the episode is active. You don't create or close windows by hand. RTMLink rolls them forward for you.

Each window keeps its own running totals:

- **Interaction days:** how many separate calendar days the patient engaged (answered a survey question or completed a home exercise).
- **Minutes reviewed:** provider time logged reviewing the patient's data during the window.
- **Interactive contacts:** phone, video, or in-person contacts recorded.

These totals are what RTM billing codes are measured against. For example, the device-supply codes require a certain number of interaction days within a 30-day window, which is why some billing suggestions only appear *after* a window closes.

> **What counts as an interaction day?** A calendar day on which the patient answered at least one survey question **or** marked at least one home-exercise as complete. Simply opening a survey link without answering anything does **not** count.

## How episodes relate to patients and billing

Think of it as three layers:

1. **Patient:** the person. Created once; reused across episodes.
2. **Episode:** one course of monitoring for that patient, with a start and end.
3. **Windows:** the 30-day periods inside an episode that billing is measured against.

A patient may come back for a second course of care months later; that's a new episode with its own windows, while their original patient record (and history) stays intact.

## Related articles

- [Enrolling a patient](enrolling-a-patient.md)
- [Viewing episode details](viewing-episode-details.md)
- [Managing episode status](managing-episode-status.md)
- [Creating a new patient](../patients/creating-a-new-patient.md)
