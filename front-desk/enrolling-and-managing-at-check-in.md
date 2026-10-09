---
description: "Enrolling a patient into RTM and managing an existing episode from the front desk check-in kiosk, without opening the full app."
---

# Enrolling and managing patients at check-in

The kiosk is not just a list; your front desk can start an RTM episode or adjust an existing one right from a patient's card. Both open as a simple pop-up, so no one needs to switch to the full app mid-arrival.

## Enrolling a patient

Tap a card marked **Needs Enrollment** to open the **Enroll in RTM** form:

1. Confirm the patient and choose the **Supervising Provider**.
2. Under **Program**, leave **Surveys** and **RTM billing** checked for a standard RTM program. Uncheck **Surveys** for an exercises-only program (shown only if your clinic uses home exercises), or uncheck **RTM billing** if this episode should not be billed for RTM.
3. Choose the **Survey**, the **Survey Frequency**, and the **Send Time** (defaults to 10:00). With **Surveys** unchecked there is no survey to pick, and the frequency reads **Reminder Frequency**.
4. Pick the **Communication Methods** (SMS is on by default; add Email).
5. Leave **Send Welcome Message Now** checked to text or email the patient an introduction right away.
6. Click **Enroll Patient**.

The episode starts immediately. A **Patient Enrolled!** confirmation appears with a **Take First Survey** button, handy if the patient wants to do their first check-in on the spot.

> The patient must already exist in your clinic (from the schedule or the patient list); the kiosk enrolls them, it does not create a brand-new patient record. If the patient already has an open episode enrolled in RTM, **RTM billing** starts unchecked: RTM can only be billed on one episode at a time, so the new episode runs without RTM.

## Managing an existing episode

Tap the **manage** button on any enrolled patient's card to open a pop-up with two tabs:

- **Settings**: change the supervising provider, check or uncheck **Surveys** and **RTM billing**, or change the survey, frequency, send time, or communication methods, then **Save Changes**. To give a patient a break from survey texts or RTM billing, uncheck the matching box here; turn it back on when they are ready. See [Stopping surveys or RTM billing temporarily](../episodes/managing-episode-status.md#stopping-surveys-or-rtm-billing-temporarily).
- **Discharge**: choose a reason (Episode Completed, Patient Request, and so on), add an optional note, and **Confirm Discharge**.

These are the same episode actions available inside the app, brought to the front desk. The kiosk does not send messages or mark arrivals; it focuses on getting patients enrolled and their episodes correct.

## Related articles

- [Using the check-in kiosk](using-the-check-in-kiosk.md)
- [Enrolling a patient](../episodes/enrolling-a-patient.md)
- [Managing episode status](../episodes/managing-episode-status.md)
