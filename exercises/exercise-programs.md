---
description: "Reusable exercise programs in RTMLink: saving a plan as a program, the Programs tab, editing a program, copying platform programs, assigning a program to a patient, and archiving programs you no longer use."
---

# Exercise programs

An **exercise program** is a named, reusable set of exercises, for example "Post-op knee, phase 1." Instead of building the same plan patient after patient, you save it once as a program and start from it whenever you need it.

Programs live on the **Programs** tab of the exercise library: open **Exercises** in the left sidebar (under **Templates**), then click **Programs**.

## Creating a program

There's no blank "new program" form. A program is made by collecting exercises:

1. Build a plan in the exercise library: add exercises and set their sets, reps, weight, side, and schedule. See [Building an exercise plan](building-an-exercise-plan.md).
2. Click **Save as program**.
3. Enter a **Program name** (required) and, optionally, a **Category**.
4. Click **Save program**.

> **Patient-specific exercises are left out.** An exercise that's private to one patient is never saved into a program, and neither is one that's been deleted from the library.

## The Programs tab

Each program shows as a card with:

- Thumbnails of its first few exercises.
- Its name, number of exercises, estimated minutes, and category, for example `6 exercises · ~12 min · Knee`.
- A badge: **Platform** (from the shared RTMLink library), **Custom** (your clinic's), or **Archived**.
- **Assigned N×**: how many of your clinic's episodes it's been assigned to.

Use **Search saved programs** to find one by name. **Filters** narrow the list to programs containing an exercise with the category, difficulty, or equipment you pick.

## Editing a program

Click a program card to open it in the full-screen program editor.

1. **Rename it** by clicking the name at the top.
2. **Change the exercises** in the table: set **Sets**, **Reps**, **Hold (sec)**, **Rest (sec)**, **Weight**, **Side**, and **Schedule** (times a day and days a week), add a note for each, reorder with the up and down arrows, or remove with **×**. Blank fields use each exercise's library default. See [Building an exercise plan](building-an-exercise-plan.md#step-2-review-and-set-the-prescription) for what each field means.
3. **Add exercises** by typing a name in the bar under the table and pressing Enter.
4. Click **Details** to set the **Category**, a **Provider description** for your team, and a **Patient summary** (a simpler description shown to patients). Click **Save details**.
5. Click **Save program**.

> **Save before you leave.** Changes aren't kept until you click **Save program**. Going back with **Library** discards unsaved changes, and **Assign to patient** assigns what's on screen without saving it to the program.

**Duplicate** makes a copy named "[program name] (copy)" and opens it, which is handy for making a variation.

> **A program is a template, not a live link.** Assigning a program copies its exercises onto the patient's plan. Editing the program later doesn't change patients who already have it, and you can adjust any patient's plan without affecting the program.

## Platform programs

Programs marked **Platform** come from the shared RTMLink library. They open read-only, labeled **Platform program**.

- To use one as is, click **Assign to patient**.
- To make it your own, click **Duplicate to your library**. RTMLink copies it into your clinic's programs and opens the copy, which you can edit.

## Assigning a program to a patient

- **From the program:** open it and click **Assign to patient**. Pick the patient's episode, choose whether to notify them, and click **Assign & send** (or **Assign**). The exercises are added after whatever the patient already has. See [Assign it to a patient](building-an-exercise-plan.md#step-3-assign-it-to-a-patient).
- **Into a patient's existing plan:** click **For a patient** on the Programs tab (or **Manage plan** on the patient's episode), pick the patient, then open the program. If the patient already has exercises, choose **Add to current plan** or **Replace current plan**, then click **Update plan**. See [Changing a patient's current plan](building-an-exercise-plan.md#changing-a-patients-current-plan).
- **From the episode:** **Assign Program** on the episode's **Exercises** tab adds a whole program in one step. See [Assigning exercises to a patient](assigning-hep-to-an-episode.md).

## Archiving a program

When your clinic stops using a program, archive it instead of leaving it in everyone's way. Only clinic owners can archive and restore programs.

1. Open the program and click **Archive**.
2. Confirm in the **Archive this program?** window.

An archived program leaves the Programs tab and every picker. Patients who already have its exercises keep their plan.

**To restore it**, click **Show archived** on the Programs tab, open the program, and click **Restore**.

## Related articles

- [Building an exercise plan](building-an-exercise-plan.md)
- [The exercise library](the-exercise-library.md)
- [Assigning exercises to a patient](assigning-hep-to-an-episode.md)
- [Understanding the Home Exercise Program](understanding-hep.md)
