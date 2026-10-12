---
description: What an episode is in RTMLink (a patient's plan of care for remote monitoring), how episode status works, and how the 30-day RTM billing windows are measured.
---

# Understanding episodes

An **episode** is a patient's plan of care in RTMLink: the course of monitoring during which they receive check-ins, you track their progress, and (when RTM billing is on) the clinic can bill for monitoring. Almost everything in RTMLink hangs off the episode.

## What an episode represents

When you enroll a patient, you create an episode. It has a **start date** (when the plan of care begins) and, eventually, a **discharge date** (when it ends). While the episode is open, RTMLink sends the patient check-in surveys on the schedule you set, collects their responses, and keeps a running tally of everything that counts toward billing.

An episode ties together everything about that course of care:

- The **patient** being monitored and the **provider** responsible for them.
- The **survey** they receive and how often it is sent.
- Their **responses**, any **exercises** assigned, and the **time** providers log reviewing their data.
- The **30-day billing windows** that track progress toward each RTM code.

> **A patient can have more than one open episode, but only one can bill RTM at a time.** Remote Therapeutic Monitoring is billed on one plan of care per patient at a time, so RTMLink lets a patient hold several concurrent episodes (for example, two body parts) while only one of them has **Enrolled in RTM** turned on. The others run as monitoring only (surveys and exercises), with no billing. A patient can also have many episodes over time, one course of care after another.

## Episode status

Over its life an episode is in one of three states:

| Status | What it means |
|--------|---------------|
| **Active** | The plan of care is open. Surveys go out on schedule and progress is tracked. |
| **Completed** | Care finished as planned (a positive close). The episode is closed but kept for the record. |
| **Discharged** | Monitoring ended for another reason. The episode is closed but kept for the record. |

On the **Episodes** list, the **Status** badge is simplified to **Active** (green) while the plan of care is open, or **Inactive** (gray) once it is closed (whether Completed or Discharged). Hover over the badge to see the full picture: the plan-of-care state, whether **Surveys** are on, the **RTM** billing state, and the patient's **Home program**.

You close an episode with **Discharge** and bring a closed one back with **Reopen**. There is no "paused" state: to stop surveys or billing for a while without closing the episode, you turn off the switches described next. See [Managing episode status](managing-episode-status.md).

## Turning surveys and billing on or off

Two independent switches on each episode let you control what happens without changing its status:

- **Surveys:** whether the patient receives check-in surveys. Turn this off to stop survey texts while keeping the episode open.
- **Enrolled in RTM:** whether the episode bills for RTM. Turn this off to stop billing while keeping the patient on surveys or exercises.

Because they are independent, an episode can run as a full RTM program (both on), as monitoring only (surveys on, RTM off), or on hold (both off) without ever being discharged. See [Managing episode status](managing-episode-status.md) for how to change them.

## 30-day billing windows

RTM billing is organized into **30-day windows**. For an episode enrolled in RTM, the first window (**Window 1**) starts on the **RTM start date** and runs for 30 days. When it ends, the next window begins automatically, and so on for as long as the episode is active and RTM stays on. You don't create or close windows by hand; RTMLink rolls them forward for you. An episode that is not enrolled in RTM has no windows and generates no billing.

> **The RTM start date is usually the enrollment date.** It is the day RTM began for the plan of care, and the 30-day periods, the setup code, and provider time all count from it. If your clinic sets a later RTM start date when enrolling, the windows tile from that day instead.

Each window keeps its own running totals:

- **Interaction days:** how many separate calendar days the patient engaged (for example, answered a survey question or completed a home exercise).
- **Minutes reviewed:** provider time logged reviewing the patient's data during the window.
- **Interactive contacts:** phone, video, or in-person contacts recorded.

These totals are what RTM billing codes are measured against. For example, the device-supply codes require a certain number of interaction days within a 30-day window, which is why some billing suggestions only appear *after* a window closes.

> **What counts as an interaction day?** A calendar day on which the patient did something that transmits monitoring data, such as answering at least one survey question or marking a home exercise as complete. Several actions on the same day still count as one interaction day. Simply opening a survey link without answering anything does **not** count.

## How episodes relate to patients and billing

Think of it as three layers:

1. **Patient:** the person. Created once; reused across every episode.
2. **Episode:** one plan of care for that patient, with a start and end.
3. **Windows:** the 30-day periods inside an RTM episode that billing is measured against.

A patient may return for a second course of care later; that is a new episode with its own windows, while their original patient record (and history) stays intact.

## Related articles

- [Enrolling a patient](enrolling-a-patient.md)
- [Viewing episode details](viewing-episode-details.md)
- [Managing episode status](managing-episode-status.md)
- [Creating a new patient](../patients/creating-a-new-patient.md)
