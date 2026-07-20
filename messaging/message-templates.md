---
description: "RTMLink's automated message templates: the seven trigger types, editing the wording per channel, and why templates deactivate instead of delete."
---

# Message templates

RTMLink sends a handful of messages automatically: the welcome text, daily survey reminders, and outreach when a patient goes quiet. Message templates control the wording of those automatic sends. They are not canned replies for the inbox; they are the voice of the automation.

## Finding your templates

Open **Templates** > **Message Templates** in the left sidebar. Each row shows the template's name, its channel (**SMS** or **Email**), its **Type**, whether it is active, and when it was last updated. Filter by channel, type, or **Active only** / **Inactive only**.

## The template types

| Type | When it sends |
| --- | --- |
| Welcome / First Survey | when a patient is enrolled and gets their first survey link |
| Daily Survey Reminder | the scheduled daily check-in message |
| Missed Check-In Reminder | when a patient skips a day |
| Extended Absence Follow-Up | after a longer quiet stretch |
| Low Engagement Outreach | when engagement drops off |
| Pain Spike Follow-Up | after a concerning pain answer |
| Streak Milestone | celebrating a run of completed check-ins |

## Editing a template

Open a template to adjust its wording per channel. Keep the placeholders (patient name, survey link, and so on) intact so each send personalizes itself. Changes apply to future sends only.

> **Templates deactivate, never delete.** Retiring a template is a status flip, so history stays intact and you can bring the wording back later. An inactive template simply stops being used.

## Role permissions

Managing templates is a Clinic Owner job (or anyone granted template settings access). Everyone else sees the automated messages only where they land: in patient conversations.

## Related articles

- [The Messages inbox](the-messages-inbox.md)
- [Daily summary emails and texts](../check-ins/daily-summary-notifications.md)
- [Understanding surveys](../check-ins/understanding-surveys.md)
