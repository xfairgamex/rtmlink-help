---
description: What SMS and email consent control in RTMLink, how to turn each on or off, how consent is recorded for compliance, how to re-enable texting after a patient opts out, and why a carrier block can silence texts even when consent is on.
---

# Managing patient consent

Consent decides how RTMLink is allowed to reach each patient. Because surveys and reminders go out by text and email, a patient's consent settings directly affect whether they can be monitored remotely.

## What consent controls

- **SMS Consent:** when on, RTMLink can text the patient: survey links, reminders, and messages from your team. When off, the patient receives **no texts at all**, including survey links.
- **Email Consent:** when on, RTMLink can email the patient. Email consent can only be turned on when the patient has an email address on file.

> SMS is the primary way most patients receive their survey links. If a patient has SMS consent off and no email, RTMLink has no way to deliver their surveys.

## Turning consent on or off

1. Open the patient's record from **Patients**.
2. Click **Edit**.
3. Toggle **SMS Consent** or **Email Consent**.
4. Click **Save changes**.

Entering an email for the first time turns **Email Consent** on automatically; switch it off if the patient prefers not to receive email.

## How consent is recorded

When SMS consent is on, RTMLink stores **when** consent was captured and **how** it was obtained, so you have a record for compliance. The method reflects how consent was captured, for example:

- **Provider Portal:** captured by your staff in RTMLink (the default when you add a patient).
- **Patient Portal:** the patient opted in themselves.
- **Phone Verification:** confirmed over the phone.
- **In Person:** confirmed face to face.

You can see the consent date and method in the **Consent & Preferences** section of the patient's record, shown as **SMS Consent Date** and **SMS Consent Method**.

## When a patient opts out of texts

A patient can stop texts at any time by replying **STOP** to a message. When that happens, SMS consent switches off and RTMLink won't text them.

To start texting again, open the patient's record and choose **Re-enable SMS**.

> **Re-enabling in RTMLink may not be enough on its own.** If the patient replied **STOP**, their mobile carrier also stops delivering texts until the patient texts **START** back to your clinic's texting number. Re-enabling SMS turns consent back on in RTMLink, but the carrier keeps blocking messages until that **START** arrives. RTMLink reminds you of this when you re-enable.

## When texts are blocked by the carrier

A **carrier block** is separate from the consent toggle. When a patient texts **STOP** (or their mobile carrier reports the number as opted out), the carrier stops delivering any texts to that number, and RTMLink records the block on the patient.

> **A carrier block silences texting even when SMS Consent shows on.** Turning consent off and back on does not clear it. While the block is in place, survey links and reminders will not reach the patient no matter what the toggle says.

**How you'll spot a carrier block:**

- On the patient's record, the **SMS Consent** toggle shows a warning triangle with the tooltip **Carrier block in place**, and the **Mobile Number** reads **(SMS blocked by carrier, needs START)**.
- In the **Patients** list, a warning icon appears on the patient's phone number.
- On an episode that texts the patient, a warning icon appears next to **Communication Methods**.

Hovering any of these shows the same notice: the date the block started and the exact number the patient must text **START** to.

**How a carrier block clears:**

- The patient texts **START** to your clinic's texting number. This is the reliable fix.
- It also clears on its own once a text reaches the number again (for example, right after the patient sends **START**).
- Changing the patient's **Mobile Number** to a different number clears it too, because the block belongs to the old number.

Re-enabling SMS in RTMLink does not clear a carrier block, so if the warning is showing, ask the patient to text **START**.

## When a number can't receive texts

If the carrier rejects a patient's number as undeliverable (for example a landline or a mistyped number), RTMLink pauses texts to that patient so messages don't keep failing. Correcting the **Mobile Number** on the patient's record clears the block and lets texting resume.

## Related articles

- [Creating a new patient](creating-a-new-patient.md)
- [Editing patient information](editing-patient-information.md)
- [Messaging a patient](messaging-a-patient.md)
