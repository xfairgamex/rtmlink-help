---
description: What an episode is in RTMLink (a patient's plan of care), how episode status works, and how surveys, RTM billing, and 30-day billing windows fit together.
---

# Understanding episodes

An **episode** is a patient's plan of care in RTMLink: one course of monitoring, with a start date, a survey schedule, and the time and progress you track along the way. Almost everything in RTMLink hangs off the episode.

## What an episode represents

When you enroll a patient, you create an episode. It has a **start date** (when care begins) and, eventually, a **discharge date** (when care ends). While the episode is open, RTMLink can send the patient check-in surveys, deliver their home exercise program, collect responses, and keep a running tally of everything that counts toward billing.

An episode ties together everything about that course of care:

- The **patient** being monitored and the **provider** responsible for them.
- The **survey** they receive and how often it is sent.
- Their **responses**, any **exercises** assigned, and the **time** providers log reviewing their data.
- The **billing windows** that track progress toward each RTM code.

## How many episodes a patient can have

A patient can have **more than one open episode at a time**, for example a knee case and a shoulder case running side by side. Each has its own survey schedule, exercises, and billing.

> **Only one episode can bill RTM at a time.** Remote Therapeutic Monitoring is billed on one plan of care per patient at a time. If you try to turn RTM billing on for a second episode while another open episode already has it on, RTMLink refuses and shows: *"RTM can only be billed on one case at a time. End RTM on the other open case first, or keep this case without RTM."* A second episode is still fine; it just cannot bill RTM until the first one stops.

A patient may also come back for a new course of care months later. That is a new episode with its own windows, while their original patient record and history stay intact.

## Episode status

In the episode list, each episode shows an **Active** or **Inactive** badge. Hover over it to see the full picture in a short popover:

- **Plan of care:** Active, Completed, or Discharged.
- **Surveys:** On or Off.
- **RTM:** Disabled, Active since a date, or Ended on a date.
- **Home program:** None, or the number of exercises assigned.

The badge itself answers one question at a glance: is this a live plan of care?

- **Active** means care is ongoing. The patient can receive surveys and exercises, and progress is tracked.
- **Inactive** means the episode is **Discharged** or **Completed**, so it is closed but kept for the record.

You close an episode with the **Discharge** action (choosing a reason such as Completed, Patient request, or Medical) and bring a closed one back with **Reopen**. See [Managing episode status](managing-episode-status.md) for how and when to use each.

## Surveys and RTM billing: two independent switches

An open episode carries two separate switches, and you can set them independently:

- **Surveys:** whether the patient gets check-in surveys. Turn this **Off** and the patient receives only their home exercise program: their link opens straight to the exercises, and reminders point there instead of to a survey. The survey stays attached, so you can turn it back on later with no setup.
- **RTM billing** (labeled **Enroll in RTM** when you set up the episode, **Enrolled in RTM** afterward): whether this episode counts toward RTM billing codes.

> **Turning surveys off needs exercises.** The **Surveys** switch can only be turned off once your clinic has exercises enabled, because "surveys off" means the patient's link leads to their exercise program instead.

Turning a switch off is how you put part of a plan of care on hold without closing the episode. For example, you can keep surveys running while RTM billing is off, or keep RTM billing on while surveys are off.

> **When RTM billing is on, the clinic owns the RTM dates.** The **RTM start date** is the day RTM began for this plan of care (the enrollment date unless you set it later). The 30-day periods, the setup code, and provider time all count from that day. When you turn RTM billing off, you record an **RTM end date**: the period that contains it still closes on schedule and bills the days recorded up to the end, and nothing after it counts.

## 30-day billing windows

RTM billing is organized into **30-day windows**. The first window (**Window 1**) starts on the episode's RTM start date and runs for 30 days. When it ends, the next window begins automatically, and so on for as long as the episode is active and RTM billing is on. You do not create or close windows by hand. RTMLink rolls them forward for you.

Each window keeps its own running totals:

- **Interaction days:** how many separate calendar days the patient engaged.
- **Minutes reviewed:** provider time logged reviewing the patient's data during the window.
- **Interactive contacts:** phone, video, or in-person contacts recorded.

These totals are what RTM billing codes are measured against. For example, the device-supply codes require a certain number of interaction days within a 30-day window, which is why some billing suggestions only appear *after* a window closes.

> **What counts as an interaction day?** A calendar day on which the patient does something that counts, such as answering at least one survey question or marking at least one home exercise as complete. Several actions on the same day still count as one interaction day. Simply opening a survey link without answering anything does **not** count.

## How episodes relate to patients and billing

Think of it as three layers:

1. **Patient:** the person. Created once; reused across episodes.
2. **Episode:** one plan of care for that patient, with a start and end. A patient can have more than one at a time.
3. **Windows:** the 30-day periods inside an episode that RTM billing is measured against.

## Related articles

- [Enrolling a patient](enrolling-a-patient.md)
- [Viewing episode details](viewing-episode-details.md)
- [Managing episode status](managing-episode-status.md)
- [Understanding RTM billing](../billing/understanding-rtm-billing.md)
- [Creating a new patient](../patients/creating-a-new-patient.md)
