---
description: How to text or email a patient directly from their record or the patient list, who is allowed to send, why available channels depend on consent, how to schedule a message, and how to read delivery status.
---

# Messaging a patient

You can reach out to a patient (to nudge them about a survey, answer a question, or check in) right from RTMLink. Messages open in a panel beside whatever you're working on, so you don't lose your place.

> **Who can message:** Only Clinic Owners, Providers, and Staff can message patients. Billing Staff and Auditors cannot send messages, so the **Message** option does not appear for them anywhere in the app.

## Starting a message

Open the messaging panel from any of these places:

- From **Patients**, open the **actions** menu on a patient's row and choose **Message**.
- From a patient's record, click **Message**.
- From an episode's record, click **Message**.

The panel opens to the patient's conversation with the best available channel already selected, so you can start typing right away.

## Choosing how to reach the patient

A patient can be reached by **text (SMS)** or **email**, but only the channels they're set up for are available:

- **Text** requires SMS consent and a number that can receive texts.
- **Email** requires an email address on file with email consent.

Channels the patient hasn't consented to are shown but can't be selected. If no channel is available, update the patient's consent first: see [Patient consent & messaging permissions](patient-consent-management.md).

## Sending a message

1. Pick the channel (if more than one is available).
2. For **email**, enter a **subject** (required). If you're replying, RTMLink pre-fills a "Re:" subject.
3. Type your message. Messages can be up to **1,600 characters**.
4. Click **Send**.

Your message appears in the conversation immediately, and you can see its delivery status update as it goes out.

## Scheduling a message for later

Instead of sending right away, you can schedule a message:

1. Click **Schedule for later** in the composer.
2. Under **Send at**, pick the date and time to send (in your clinic's timezone).
3. Click **Schedule**.

A scheduled message shows in the conversation with a **Scheduled** label. Before it sends, you can **Edit** it, **Cancel** it, or (while editing) choose **Send Now**.

## Reading delivery status

Each message you send shows where it stands, just under the message in the thread:

- **Sending…:** the message is still on its way to the carrier or email provider.
- **Sent:** handed off to the carrier or email provider.
- **Delivered:** reached the patient's phone or inbox.
- **Read:** the patient opened it (when this can be detected).
- **Not delivered:** it couldn't be delivered. A text that fails this way often points to a consent or phone-number problem; see [Patient consent & messaging permissions](patient-consent-management.md).

Opening a conversation marks the patient's incoming messages as read, so your unread counts stay accurate.

## Flagging a conversation for follow-up

Click **Mark unread** at the top of the open conversation panel to flag the thread for later. The panel closes and the conversation resurfaces in **Messages** with an unread badge, so it stays visible until someone acts on it.

## Role permissions

| Action | Clinic Owner | Provider | Staff | Billing Staff | Auditor |
|--------|:-:|:-:|:-:|:-:|:-:|
| Message a patient (send, schedule, reply) | Yes | Yes | Yes | No | No |

> Billing Staff and Auditors never see the **Message** option on a patient row, patient record, or episode record.

## Related articles

- [Patient consent & messaging permissions](patient-consent-management.md)
- [Viewing & searching patients](viewing-and-searching-patients.md)
- [Editing patient information](editing-patient-information.md)
