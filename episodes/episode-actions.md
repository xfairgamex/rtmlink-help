---
description: "Everyday episode actions in RTMLink: copying a patient's survey link, messaging the patient, and editing episode settings like provider, reminders, and clinical details."
---

# Episode actions

Beyond changing an episode's status, there are a few day-to-day actions you'll use often: sharing the patient's survey link, messaging them, and editing the episode's settings. Most are on the **Episodes** list (open the actions menu on the episode's row using the **⋯** button), and the main ones are also available when you open an episode.

## Copying the survey link

Every patient has a personal survey link they use to answer their surveys. To grab it:

- From the actions menu on an active episode, choose **Survey Link**. RTMLink shows the link so you can copy it, useful for reading it to a patient over the phone or pasting it into another system.
- Or open the episode and copy it from the **Survey Link** field in the **Episode Details** card. Click the field to copy it; you'll see "Survey link copied!"

> The **Survey Link** action appears only on **active** episodes whose patient has a survey link set up.

## Messaging the patient

To start a conversation without leaving the episode:

- Choose **Message** from the actions menu, or click **Message** at the top of an open episode.

A messaging panel opens, already set to the patient's preferred channel (SMS or email). See [Messaging a patient](../patients/messaging-a-patient.md) for how conversations work.

> The **Message** action appears only if your role can send messages. Clinic owners, providers, and staff can; billing staff and auditors cannot.

## Editing episode settings

To change how an episode runs, open it and click **Edit** (or choose **Edit** from the actions menu). The settings are grouped into a few sections:

- **Assigned Provider:** the provider responsible for this episode's RTM billing.
- **Surveys** and **Survey:** the **Surveys** switch turns the patient's survey check-ins on or off, and **Survey** chooses which survey they answer. (Surveys can only be switched off once your clinic has exercises enabled.)
- **Send time** and **How often:** when the daily reminder goes out and on which days. "No reminders" sends nothing on a schedule, but the patient can still open their link any time.
- Communication: **Text message (SMS)** and **Email** control how the patient is reached. Turning on **Text message (SMS)** also shows the patient's **Mobile number** so you can correct it. You must keep at least one of the two on.
- **Enrolled in RTM**, **RTM start date**, and **RTM end date:** whether this episode is billing RTM and the dates that RTM ran.
- **Clinical Context:** **Diagnosis Code**, **Diagnosis Description**, **ICD-10 Codes**, **Body Part**, **Discipline**, **Treatment Type**, and a custom **Episode Name**.
- **Notes:** free-text notes on the episode.

> The **Surveys** and **Enrolled in RTM** switches are how you start or stop monitoring and billing on an episode. For what each one does to check-ins and billing, see [Managing episode status](managing-episode-status.md) and [Understanding RTM billing](../billing/understanding-rtm-billing.md).

> **Two things can't be changed after enrollment:** the **Patient** and the **Start Date**. They're fixed because the start date anchors the episode's 30-day billing windows. If either is wrong, discharge the episode and enroll the patient again with the correct details.

## Related articles

- [Viewing episode details](viewing-episode-details.md)
- [Managing episode status](managing-episode-status.md)
- [Messaging a patient](../patients/messaging-a-patient.md)
- [Enrolling a patient](enrolling-a-patient.md)
