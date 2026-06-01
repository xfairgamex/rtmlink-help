---
description: What SMS and email consent control in RTMLink, how to turn each on or off, how consent is recorded for compliance, and how to re-enable texting after a patient opts out.
---

# Managing patient consent

Consent decides how RTMLink is allowed to reach each patient. Because surveys and reminders go out by text and email, a patient's consent settings directly affect whether they can be monitored remotely.

## What consent controls

- **SMS Consent** — when on, RTMLink can text the patient: survey links, reminders, and messages from your team. When off, the patient receives **no texts at all**, including survey links.
- **Email Consent** — when on, RTMLink can email the patient. Email consent can only be turned on when the patient has an email address on file.

> SMS is the primary way most patients receive their survey links. If a patient has SMS consent off and no email, RTMLink has no way to deliver their surveys.

## Turning consent on or off

1. Open the patient's record from **Patients**.
2. Click **Edit**.
3. Toggle **SMS Consent** or **Email Consent**.
4. Click **Save changes**.

Entering an email for the first time turns **Email Consent** on automatically; switch it off if the patient prefers not to receive email.

## How consent is recorded

When SMS consent is on, RTMLink stores **when** consent was captured and **how** it was obtained, so you have a record for compliance. The method is one of:

- **Provider Portal** — captured by your staff in RTMLink (the default when you add a patient).
- **Patient Portal** — the patient opted in themselves.
- **Phone Verification** — confirmed over the phone.
- **In Person** — confirmed face to face.

You can see the consent date and method in the **Consent & Preferences** section of the patient's record.

## When a patient opts out of texts

A patient can stop texts at any time by replying **STOP** to a message. When that happens, SMS consent switches off and RTMLink won't text them.

To start texting again, open the patient's record and choose **Re-enable SMS**.

> **Re-enabling in RTMLink may not be enough on its own.** If the patient replied **STOP**, their phone carrier also blocks messages until the patient texts **START** back to your clinic's number. Re-enabling SMS in RTMLink clears it on our side, but the patient still has to text **START** to lift the carrier's block. RTMLink reminds you of this when you re-enable.

## When a number can't receive texts

If a carrier rejects a patient's number as undeliverable — for example a landline or a mistyped number — RTMLink pauses texts to that patient so messages don't keep failing. Correcting the **Mobile Number** on the patient's record clears the block and lets texting resume.

## Related articles

- [Creating a new patient](creating-a-new-patient.md)
- [Editing patient information](editing-patient-information.md)
- [Messaging a patient](messaging-a-patient.md)
