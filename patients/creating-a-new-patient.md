---
description: Step-by-step guide to adding a new patient in RTMLink — the required details, choosing a primary provider, and setting SMS and email consent so you can reach them.
---

# Creating a new patient

Adding a patient creates their record in RTMLink. Once a patient exists, you can enroll them in monitoring, message them, and track their care. This is usually the first step before starting an episode.

## Adding a patient

1. Click **Patients** in the left sidebar.
2. Click **New patient** in the top-right. (On a brand-new clinic, click **Add your first patient**.)
3. Fill in the form, described below.
4. Click **Create**.

After you save, you'll land on the new patient's record, where you can start their episode.

## Patient Information

- **First name** — required.
- **Last name** — required.
- **Date of Birth** — required. It can't be in the future, and RTMLink shows the patient's age as you enter it so you can sanity-check the date.
- **Primary Provider** — optional. Choose the provider responsible for this patient from your clinic's providers. You can set or change this later.

## Contact Information

- **Mobile Number** — required. This is the number RTMLink uses to text survey links and messages, so enter a mobile number the patient actually uses.
- **SMS Consent** — on by default. This confirms the patient agrees to receive text messages. Leave it on so the patient can receive survey links and texts; see [Patient consent & messaging permissions](patient-consent-management.md) for what it controls.
- **Email** — optional. If you enter an email, you can also turn on email communication.
- **Email Consent** — off by default, and you can't turn it on until an email address is entered. Adding an email turns this on automatically; switch it off if the patient prefers not to receive email.
- **Timezone** — required. Defaults to your clinic's timezone. This controls what time of day the patient's survey links go out, so set it to the patient's own timezone if they live elsewhere.

> **SMS Consent is what lets you reach the patient by text.** When it's on, RTMLink records the date and that consent was captured through the provider portal, for your compliance records. If you turn it off, the patient won't receive any texts — including survey links.

## EHR-managed patients

If a patient was brought in from a connected EHR, you'll see an **EHR Integration** section with a read-only **External EHR ID**. That field is managed by the sync and can't be edited here.

## What happens next

A new patient isn't being monitored yet — their status shows **Not enrolled** until you start an episode. To begin monitoring, open the patient and choose **Start Episode**. See [Enrolling a patient](../episodes/enrolling-a-patient.md).

## Related articles

- [Viewing & searching patients](viewing-and-searching-patients.md)
- [Editing patient information](editing-patient-information.md)
- [Patient consent & messaging permissions](patient-consent-management.md)
- [Enrolling a patient](../episodes/enrolling-a-patient.md)
