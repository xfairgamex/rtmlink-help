---
description: "Building an exercise plan in RTMLink: collecting exercises from the library, setting sets, reps, weight, side, and schedule, then assigning the plan to a patient, updating a patient's existing plan, or saving it as a reusable program."
---

# Building an exercise plan

A **plan** is the set of exercises a patient does at home. You build one by collecting exercises from the [exercise library](the-exercise-library.md), setting how much and how often, and then either **assigning it to a patient** or **saving it as a program** you can reuse.

The same plan builder handles three jobs:

- **Start a new plan** from the library and assign it to a patient.
- **Change a patient's current plan** (their exercises load in, you adjust, then click **Update plan**).
- **Save a set of exercises as a program** for next time. See [Exercise programs](exercise-programs.md).

> **Your plan is a draft until you act on it.** It belongs to you, and it stays in place while you move around the exercise pages. Nothing reaches a patient or your library until you assign it, update it, or save it as a program.

## Which way to start

- **Enrolling someone new?** Add their first exercises in the **Assign exercises** section of the enrollment form, then fine-tune them later with **Manage plan**. See [Assigning exercises during enrollment](assigning-hep-to-an-episode.md#assigning-exercises-during-enrollment).
- **Changing what a patient already does?** Open their episode, select the **Exercises** tab, and click **Manage plan**. Their current exercises load in, you edit them in place, and their history is kept.
- **Starting from a protocol you've saved?** Click **For a patient** and pick the patient, then open the program on the **Programs** tab. Adjust any doses for this patient and click **Update plan**.
- **Tailoring a plan to one patient?** Click **For a patient** before you add anything. Picking the patient first also shows any exercises that are private to them.
- **Building a routine to reuse?** Add exercises without picking a patient, then click **Save as program**.

## Step 1: Add exercises

1. Open **Exercises** in the left sidebar (under **Templates**).
2. Find an exercise by searching or filtering (see [Finding exercises](the-exercise-library.md#finding-exercises)).
3. Click the round **+** button on its card. The button turns into a check mark, meaning the exercise is in your plan.
4. Repeat for each exercise.

You can also open an exercise's details and click **Add to plan**.

As soon as your plan has an exercise, a dark **plan bar** appears at the top of the library, for example **Plan · 4 exercises · ~8 min**. Click **Clear** on the bar to empty the plan and start over.

> **Just made a new exercise?** On the New exercise form, **Save and add to plan** creates the exercise and drops it straight into your plan.

## Step 2: Review and set the prescription

Click **Review plan** on the plan bar. A panel slides in from the right with every exercise in your plan.

1. **Name the plan** (optional): click the name at the top to rename it.
2. For each exercise, set the prescription:
   - **Sets**, **Reps**, **Hold (sec)**, and **Rest (sec)**: leave any of these blank to use the exercise's library default. The default shows in gray inside the field and under the exercise name (for example, "library default 3 × 10, 5s").
   - **Weight**: free text, so write it the way the patient should read it (for example, "5 lb" or "green band").
   - **Side**: click to cycle through **Both**, **Left**, and **Right**.
   - **Times / day**: use **−** and **+** to set how many times a day (1 to 6).
   - **Days / week**: use **−** and **+** to set how many days a week (1 to 7). Seven days means every day.
   - **Note to patient (optional)**: a short note the patient sees with the exercise (up to 500 characters).
3. Use the up and down arrows beside each exercise's number to put them in the order the patient should do them.
4. Click the **×** on an exercise to remove it, or **+ Back to library to add more**.

The line under the plan name sums it up, for example **4 exercises · ~8 min · patient does these 3 days a week**. The minutes are a rough estimate based on sets, reps, and hold time.

> **Prefer a table?** Click the expand icon at the top of the panel to open the full-screen **Review plan** page. It has the same fields in rows, plus a bar at the bottom where you can type an exercise name and press Enter to add it without touching the mouse. Click **Library** to go back.

## Step 3: Assign it to a patient

1. At the bottom of the panel, click **Assign to patient**.
2. Under **Patient · episode**, search for the patient and click their episode. Only **active** and **paused** episodes are listed, with your own patients first.
3. Decide whether to tell the patient (see [Notifying the patient](#notifying-the-patient) below).
4. Check the **Patient preview** on the right. It shows the exercises the way the patient will see them.
5. Click **Assign & send** (or **Assign** if you're not sending a message).

RTMLink adds the exercises to the patient's episode and takes you to that episode.

> **Assigning adds; it doesn't replace.** The new exercises go after whatever the patient already has, and RTMLink doesn't skip exercises they already have. To change a patient's existing exercises, build the plan for that patient instead (next section).

## Changing a patient's current plan

When a patient already has exercises, work on their plan directly so you can see what they have and change it in place.

1. Start from either place:
   - On the patient's episode, open the **Exercises** tab and click **Manage plan**.
   - In the exercise library, click **For a patient**, then pick the patient's episode in the **Who is this plan for?** window.
2. The patient's current exercises load into the plan, and a badge with their name replaces the **For a patient** button. Any [exercises private to this patient](the-exercise-library.md#patient-specific-exercises) now appear in the library, at the top.
3. Add, remove, reorder, and adjust exercises as in steps 1 and 2.
4. Click **Update plan**. The window reads **Update [patient]'s plan**.
5. Decide whether to notify the patient, then click **Update & notify** (or **Update plan**).

RTMLink confirms what changed, for example "2 added · 3 kept · 1 removed".

What **Update plan** does to the patient's exercises:

- **Kept exercises** keep their full history: completions, adherence, and the billing record stay attached.
- **Removed exercises** are **deactivated**, not deleted. They stay in the episode's history, and you can reactivate them from the episode's **Exercises** tab.
- **New exercises** are added in the order you set.

> **Changed your mind?** **Revert changes** on the plan bar puts the patient's saved plan back. To stop working on this patient, click the **×** on their name badge. That also clears the plan, including any changes you haven't saved.

**If you'd already started a plan** before picking the patient, RTMLink asks what to do with it: **Add to current plan** (their exercises plus your picks) or **Replace current plan** (only your picks). Nothing changes for the patient until you click **Update plan**.

> **Older schedules carry over.** If an exercise was assigned with an older **Frequency** setting (such as **3x per week**), the plan shows it as the matching times a day and days a week. When you update the plan, the patient sees the schedule in that new form.

## Notifying the patient

When you assign or update a plan, you can send the patient a message with a link to their exercises.

- **Notify [patient]** is ticked for you when the patient can be reached and your role can send messages. Untick it to assign quietly.
- Choose **Text message** or **Email**. The choices follow the episode's communication methods and the patient's consent.
- Edit the message if you like. It starts as "Hi [first name]! Here's your updated home program." RTMLink adds the link to their exercises on its own line.

If the patient can't be reached (for example, they have no phone number on file or haven't consented to texts), RTMLink shows why and assigns the plan without a message. If a message fails to send, the plan is still assigned.

## Saving the plan as a program

To reuse this set of exercises with other patients:

1. Click **Save as program** at the bottom of the panel.
2. Enter a **Program name** (required) and, optionally, a **Category**.
3. Click **Save program**.

The program appears on the **Programs** tab of the exercise library. See [Exercise programs](exercise-programs.md).

> **Private exercises stay private.** An exercise locked to one patient is never saved into a program, and neither is an exercise that's been deleted from the library. They're left out automatically.

## Exercises deleted from the library

If someone deletes an exercise that's still on a patient's plan, the patient keeps it. When you open that patient's plan, the exercise shows a **Deleted from library** tag so you can remove it. It's never added to another patient or saved into a program.

## Why it matters for billing

Each day a patient marks at least one exercise complete counts as an RTM **interaction day**, the same as answering a check-in. See [How exercise completion counts toward billing](understanding-hep.md#how-exercise-completion-counts-toward-billing).

## Who can do this

Clinic owners, providers, and staff can build plans and assign or update them. **Save as program** is available to clinic owners and providers. See [Role permissions](understanding-hep.md#role-permissions).

## Related articles

- [The exercise library](the-exercise-library.md)
- [Exercise programs](exercise-programs.md)
- [Assigning exercises to a patient](assigning-hep-to-an-episode.md)
- [The patient's exercise experience](the-patient-exercise-experience.md)
- [Understanding the Home Exercise Program](understanding-hep.md)
