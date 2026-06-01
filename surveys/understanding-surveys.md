---
description: What surveys are in RTMLink — the daily check-ins patients answer, how internal and patient-facing names work, the Active/Inactive/Default statuses, and how survey versions keep past responses intact.
---

# Understanding surveys

A **survey** is the set of questions a patient answers between visits — their daily check-in. RTMLink sends each patient their survey on a schedule, collects the answers, and surfaces anything that needs your attention. Surveys are the heart of Remote Therapeutic Monitoring: every answered question is a data point, and every day a patient engages counts toward billing.

In the sidebar, surveys live under **Templates → Check-In Templates**. (The buttons and forms throughout the app still call each one a "survey" — they're the same thing.)

## Two names for every survey

Each survey has two names:

- **Internal Name** — what you and your team see in lists and reports. Required.
- **Patient-Facing Name** — what the *patient* sees at the top of their check-in. Optional. If you leave it blank, the patient sees the internal name instead.

This lets you label a survey "MSK Daily — Knee v2" internally while the patient simply sees "Your Daily Check-In."

## Survey status

Every survey shows one status badge:

| Status | What it means |
|--------|---------------|
| **Active** | Available to assign to new episodes. |
| **Inactive** | Hidden from new enrollments. Episodes already using it keep working. |
| **Default** | The active survey pre-selected when you enroll a patient. |

A few rules keep this consistent:

- There is **one default survey per clinic**. Setting a new default automatically clears the old one.
- The **default is always active** — you can't deactivate it. To retire it, make a different survey the default first.
- Deactivating a survey never disrupts patients already on it; it only removes the survey from the list of choices when enrolling someone new.

## What's inside a survey

A survey is a list of **questions**. Each question has a type (a 0–10 scale, yes/no, multiple choice, a number, or free text) and can be configured to:

- **Feature** it — featured questions appear as their own columns in the patient's episode, so you can scan key answers (like a pain score) without opening each response.
- **Flag** an answer — an answer that crosses a threshold you set can raise an alert, marking the response for follow-up.
- **Categorize** it for analytics — tagging a question as Pain Intensity, Sleep Quality, and so on lets RTMLink chart trends over time.

See [Creating a survey](creating-a-survey.md) for how to build these.

## Reading the survey list

The **Check-In Templates** list shows every survey in your clinic:

| Column | What it shows |
|--------|---------------|
| **Internal Name** | Your label for the survey. |
| **Patient-Facing Name** | What patients see (— if none set). |
| **Questions** | How many questions the survey has. |
| **Status** | Active, Inactive, or Default. |
| **Patients Using** | How many episodes are assigned this survey. |
| **Created** | When the survey was added. |

## Editing is always safe

Surveys are **versioned**. Every time you change a survey's questions, RTMLink saves a snapshot. When a patient answers, their response is tied to the snapshot they actually saw — so **editing a survey never changes past responses**. Old responses always show the questions and wording the patient was given at the time. This means you can refine a survey freely without worrying about rewriting history.

## How it all fits together

- A **survey** defines the questions.
- An **episode** assigns one survey to one patient on a schedule (set at [enrollment](../episodes/enrolling-a-patient.md)).
- The patient answers, creating **responses** you review on the episode.

## Related articles

- [Creating a survey](creating-a-survey.md)
- [Editing & managing surveys](editing-and-managing-surveys.md)
- [Understanding survey responses](understanding-survey-responses.md)
- [Enrolling a patient](../episodes/enrolling-a-patient.md)
