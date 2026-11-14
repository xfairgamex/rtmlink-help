---
description: How to open a patient's record, update their demographics, contact details, and consent, understand read-only EHR fields, and archive a patient.
---

# Editing patient information

A patient's record is the hub for everything about that person: their details, consent, messages, and episode. This article covers viewing the record, updating information, and the actions available from it.

## Opening a patient's record

Click **Patients** in the sidebar, then click a patient's **name**. Their record opens with everything organized into sections:

- **Patient Information:** name, date of birth (with age), and primary provider.
- **Contact Information:** mobile number, email, and timezone.
- **Consent & Preferences:** SMS and email consent, plus when and how SMS consent was captured.
- **EHR Integration:** shown only for patients synced from a connected EHR.

## Editing the details

1. Open the patient's record (or use the **Edit** action from the patient list).
2. Click **Edit**.
3. Update any field: name, date of birth, primary provider, mobile number, email, consent toggles, or timezone.
4. Click **Save changes**.

The fields are the same ones you set when adding a patient. See [Creating a new patient](creating-a-new-patient.md) for what each one means.

> **Fixing a bad phone number re-enables texting.** If RTMLink had stopped texting a patient because their number was undeliverable, simply correcting the **Mobile Number** clears that block, and the next survey link will try the new number.

## Changing the primary provider

When you choose a different **Primary Provider** for a patient who has an open episode, RTMLink offers to move that episode to the new provider as well. A checkbox appears under the field: **Also move their current episode to [new provider]** (or **Also move their 2 current episodes to [new provider]** when there is more than one), with the note *Surveys and billing follow the episode's provider, currently [current provider].*

The box is checked each time you change the provider. Leave it checked and click **Save changes** to hand the open episode (or episodes) to the new provider. RTMLink confirms the move and refreshes the patient's **Episodes** list.

> **Why this matters.** The primary provider on the patient record only sets who a *new* episode starts with. Once an episode is running, surveys, unread-survey alerts, and billing follow that **episode's** own provider, not the patient's primary provider. So if you change the primary provider but clear this box, the previous provider keeps getting the patient's surveys and keeps the episode's billing. Clear the box only when you want the open episode to stay with its current provider.

The checkbox appears only when the patient has an open episode that isn't already assigned to the provider you picked. If there is nothing to move, you won't see it.

## Read-only fields

The **External EHR ID** under **EHR Integration** is filled in by your EHR sync and can't be edited in RTMLink. It only appears for patients who came from a connected EHR.

## Other actions on the record

From the patient's record you can also:

- **Start Episode** / **View Episode**: begin monitoring, or jump to the patient's current episode. See [Enrolling a patient](../episodes/enrolling-a-patient.md).
- **Message**: text or email the patient. See [Messaging a patient](messaging-a-patient.md).
- **Re-enable SMS**: appears if the patient has opted out of texts. See [Patient consent & messaging permissions](patient-consent-management.md).

> Depending on your clinic's setup, you may also see an option to invite the patient to the patient portal (a personal login). If you don't see it, your clinic isn't using patient logins, and nothing is missing.

## Archiving a patient

To remove a patient, open their record and choose **Delete**. RTMLink asks you to confirm first. Deleted patients are **archived, not permanently erased**: their history is retained for your records and compliance. Contact your clinic administrator if a patient needs to be restored.

## Related articles

- [Viewing & searching patients](viewing-and-searching-patients.md)
- [Creating a new patient](creating-a-new-patient.md)
- [Patient consent & messaging permissions](patient-consent-management.md)
- [Messaging a patient](messaging-a-patient.md)
