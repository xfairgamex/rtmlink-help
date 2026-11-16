---
description: "How to enroll a patient: choosing a provider and survey, deciding whether the case bills for RTM, setting the reminder schedule, picking how the clinic reaches the patient, and sending the first message."
---

# Enrolling a patient

Enrolling a patient starts an **episode**, the course of care during which they receive reminders and surveys and the clinic tracks their progress. Most episodes also bill for Remote Therapeutic Monitoring (RTM), but a case can run as monitoring only when it should not bill. The patient must already exist in RTMLink before you can enroll them; see [Creating a new patient](../patients/creating-a-new-patient.md).

## Two ways to start an episode

- **From the patient's record:** open the patient and click **Start Episode**. The patient is filled in for you, along with their provider and contact preferences.
- **From the Episodes list:** click **Episodes** in the left sidebar, then **New episode** (or **Enroll a patient** on a clinic with no episodes yet), and choose the patient.
- **From today's schedule:** the **Seeing you today, not on RTM** prompt has an **Enroll** button beside each patient, and the Appointments page offers **Start episode** on a row. Both prefill the patient. See [Seeing you today, not on RTM](../check-ins/seeing-you-today-not-on-rtm.md).

All of them open the same enrollment form.

## Filling in the enrollment form

The form is grouped into **Enrollment**, **Survey**, **Reminders**, and an optional **Assign exercises** section. Work down through them and click **Create** at the end.

### Enrollment

- **Patient:** required. Search by name. Each result shows the patient's date of birth in parentheses after their name (for example, `Jane Smith (03/14/1975)`), so you can tell apart two patients who share a name and avoid enrolling the wrong one.
- **Assigned Provider:** required. The provider responsible for this episode, and the one it bills under. When you pick a patient who has a primary provider, this fills in automatically; you can change it. The list includes your clinic's providers and owners. Assistants (for example, a PTA or OTA) do not appear here because they cannot be the billing practitioner, but they can still log time on the episode once it exists.
- **Start Date:** required. Defaults to today and **can't be in the future**. This is the day care begins. You can't change the start date after the episode is created.
- **Enroll in RTM:** on by default. Leave it on for a normal RTM episode. When it's on, RTM bills from the RTM start date below, and the 30-day billing periods, the setup code, and provider time all count from that day. See [Enrolling with or without RTM](#enrolling-with-or-without-rtm) below.
- **RTM start date:** shown when **Enroll in RTM** is on. Leave it blank to start RTM on the **Start Date**. Set an earlier-or-equal day only if RTM actually began before you entered the episode; it can't be before the start date or in the future.
- **RTM Program Consent:** shown only when the case bills for RTM and your clinic requires consent. When it appears, pick how the patient's consent was obtained; see [Recording RTM consent](#recording-rtm-consent) below.

### Survey

- **Surveys:** on by default. Leave it on so the patient answers check-in questions. You can turn it off only if your clinic has exercises enabled, in which case the patient's link opens their home exercise program instead and reminders point there.
- **Survey:** required when **Surveys** is on. The set of questions the patient answers. Your clinic's default survey is pre-selected; you can switch to any other active survey.

### Reminders

One scheduled reminder goes to the patient on each sending day. It carries whatever the episode runs: the survey, the home exercise program, or both. A short line on the form tells you what the current reminder will send.

- **Send time:** the time of day the reminder goes out, in the **patient's** time zone. Defaults to **10:00**. If the patient set their own reminder preference, that wins.
- **How often:** how often the reminder is sent: **Every day**, **Every other day**, **Every 3 days**, **Every 7 days**, **Weekdays only**, or **No reminders** (defaults to **Every day**). See [How often reminders are sent](#how-often-reminders-are-sent). With **No reminders**, nothing is sent on a schedule, but the patient can still open their link any time.
- **How we'll reach the patient:** pick at least one of **Text message (SMS)** or **Email** (see [Choosing how to reach the patient](#choosing-how-to-reach-the-patient) below). These are pre-filled from the patient's consent settings.
- **Send Welcome Message:** on by default. When on, the patient gets their first link right away, or the portal invite instead if your clinic requires patient logins. Turn it off and it goes out at the regular reminder time.
- **Send later:** shown while **Send Welcome Message** is on, and off by default. Turn it on to hold the welcome until a time you pick.
- **Send at:** shown when **Send later** is on. Pick the date and time the welcome goes out (in the clinic's time zone); it must be in the future. If the patient has an appointment coming up, RTMLink pre-fills this with 30 minutes before that appointment, so the welcome lands while they are on their way in.

> **Surveys wait for the welcome.** While a welcome is scheduled for later, the reminder schedule is held back so the patient never gets a survey before their introduction.

### Assign exercises

If your clinic has exercises enabled, this optional section lets you start the patient's home exercise program while you enroll them. Click **Add exercise**, choose an **Exercise** (a preview shows its photo, instructions, and default dosage), and optionally adjust the prescription. If an exercise can't be assigned, the episode is still created and RTMLink tells you which exercises were skipped. See [Assigning exercises during enrollment](../exercises/assigning-hep-to-an-episode.md#assigning-exercises-during-enrollment).

### Notes

An optional free-text box for anything you want recorded on the episode.

> **Adding clinical details:** Diagnosis code, ICD-10 codes, body part, treatment type, and a custom episode name aren't on the enrollment form. You can add them afterward by opening the episode and choosing **Edit**.

## Enrolling with or without RTM

**Enroll in RTM** is on by default, which is what you want for most patients. The case bills for RTM, asks for consent if your clinic requires it, and opens a 30-day billing period from the RTM start date.

Turn it off to run the episode as **monitoring only**: the patient still gets reminders, surveys, and exercises, and you can still log time, but the case creates no RTM consent request, no billing periods, and no billing suggestions. You can enroll the patient in RTM later from the episode's **Edit** page.

> **One RTM case at a time.** RTM is billed on only one case per patient. If the patient already has an open case that bills for RTM, this new case is **monitoring only** and the **Enroll in RTM** switch is locked off, with a note explaining why: "This patient already has a billing case in RTMLink, and RTM is billed on one case at a time." To move billing to the new case instead, end RTM on the other case first, or switch the billing case from the episode's **Edit** page; see [Episode actions](episode-actions.md).

## Choosing how to reach the patient

Under **How we'll reach [patient]**, you pick the channels RTMLink uses to send reminders and messages for this episode. Tick **Text message (SMS)**, **Email**, or both. You must choose at least one; if you leave both unticked, RTMLink asks you to pick a way to reach the patient before it will save.

Both boxes start pre-filled from the patient's consent: **Text message (SMS)** is on if the patient has consented to texts, and **Email** is on if they have an email on file and have consented to email.

### Text message (SMS)

When you tick **Text message (SMS)**, a **Mobile number** field appears, pre-filled with the patient's number on file. Editing it here also updates the patient's number on their record.

RTMLink then checks whether that number can actually receive texts and shows the result under the field:

- A green confirmation means the number can receive texts.
- A red **Landline** warning means the number can't receive texts. Edit it to a mobile number, or use **Email** for this patient instead.
- While the check is still running, you'll see a short "we'll verify this number" note with a **Check now** link. Click **Check now** to run the check right away.

> **A number imported from your EHR may need review.** If the patient's phone was brought in from your records system with extra text around it (often a caregiver's number), RTMLink holds it for review and asks you to confirm or dismiss it before you can enroll. Pick the suggested number or keep the one on file, right there on the form.

### Email

When you tick **Email**, RTMLink shows the address surveys will be sent to. If the patient has no email on file, it tells you to add one on the patient record before email can be used; see [Editing patient information](../patients/editing-patient-information.md).

> **If a text can't be delivered, RTMLink falls back to email.** If a survey text is accepted when sent but later rejected by the carrier (for example, the number turns out to be a landline), RTMLink automatically turns on email for the episode and re-sends that day's survey by email, so the patient isn't skipped. This only happens when the patient has an email on file and has consented to email; otherwise the undeliverable number is flagged for staff to fix.

## Recording RTM consent

If your clinic requires RTM Program Consent, the enrollment form shows an **RTM Program Consent** choice while **Enroll in RTM** is on. You must pick one before you can enroll the patient. It defaults to **Send digital consent form**.

- **Send digital consent form:** the patient reviews and agrees online the first time they open their survey link. Surveys still send on schedule, so nothing is delayed while you wait for them to agree.
- **Verbal consent obtained:** you confirm the patient agreed verbally. RTMLink records the consent right away, with you as the witness.
- **Paper consent form signed:** the clinic keeps the signed form. RTMLink records the consent right away, with you as the witness.

For **Verbal consent obtained** or **Paper consent form signed**, a **When the patient consented** field appears, set to now. If you record it more than a day after it happened, RTMLink flags the consent for review unless the clinic notes its evidence on the episode.

After enrollment, the consent status shows on the episode's detail page; see [Viewing episode details](viewing-episode-details.md).

> **This field only appears when your clinic has turned it on.** A clinic administrator enables it with **Require RTM Program Consent** in **Clinic Settings**, under **Patient Consent**. Turning it on affects new enrollments only, never episodes that already exist. A monitoring-only case is never asked for RTM consent. Recording consent is not a billable interaction and does not count toward billing time.

## How often reminders are sent

The **How often** option decides which days the patient gets a reminder, and **Send time** decides when on those days:

- **Every day:** a reminder every calendar day.
- **Every other day:** every second day, counted from the start date. If care starts on a Monday, reminders go out Monday, Wednesday, Friday, and so on.
- **Every 3 days:** every third day, counted from the start date (start on a Monday goes to Monday, Thursday, Sunday, and so on).
- **Every 7 days:** once a week, on the same weekday the episode started (start on a Monday goes to every Monday).
- **Weekdays only:** Monday through Friday. No reminders on Saturday or Sunday.
- **No reminders:** nothing is sent on a schedule. The patient can still open their link any time, so this fits a patient who prefers to check in on their own.

On each sending day, the reminder arrives at the **Send time** in the patient's own time zone (the default is **10:00**). You can change the cadence or send time later by opening the episode and choosing **Edit**; see [Episode actions](episode-actions.md).

## Finishing up

Click **Create** to enroll the patient. RTMLink:

1. Creates the episode and sets it to **Active**.
2. Opens the first 30-day billing period from the RTM start date, when the case is enrolled in RTM.
3. Sends the first message immediately if **Send Welcome Message** was on and **Send later** was off. If you scheduled it, RTMLink confirms with **Welcome message scheduled** and the date and time it will go out, and the first survey waits until then.

You'll land on the new episode's detail page, where you can see responses come in, log time, and track billing progress.

## Related articles

- [Understanding episodes](understanding-episodes.md)
- [Viewing episode details](viewing-episode-details.md)
- [Editing episode settings](episode-actions.md)
- [Creating a new patient](../patients/creating-a-new-patient.md)
