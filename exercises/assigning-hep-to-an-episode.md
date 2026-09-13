---
description: "Giving a patient their home exercises in RTMLink: managing their plan from the episode, assigning exercises when you create the episode, the episode's Exercises tab, customizing an exercise for one patient, and deactivating or reactivating exercises."
---

# Assigning exercises to a patient

A patient's exercises live on their **episode**. The [library](the-exercise-library.md) and [programs](exercise-programs.md) are your building blocks; the episode is where one patient's plan is kept and tracked.

## Ways to give a patient exercises

- **Manage plan** on the episode's **Exercises** tab: the main way to set up or change a patient's plan, with every prescription option. See below.
- **For a patient** in the exercise library: the same plan builder, started from the library. See [Building an exercise plan](building-an-exercise-plan.md#changing-a-patients-current-plan).
- **When you create the episode:** the optional **Assign exercises** section on the enrollment form. See [Assigning exercises during enrollment](#assigning-exercises-during-enrollment).
- **Quick actions on the Exercises tab:** add one exercise or one program without opening the plan builder.

## Managing a patient's plan from the episode

1. Open the patient's episode and select the **Exercises** tab.
2. Click **Manage plan**.
3. The exercise library opens with this patient's current exercises loaded into the plan.
4. Add, remove, reorder, and set each exercise's **Sets**, **Reps**, **Hold (sec)**, **Rest (sec)**, **Weight**, **Side**, **Times / day**, and **Days / week**.
5. Click **Update plan**, choose whether to notify the patient, and confirm.

Exercises you keep retain their history, and exercises you remove are deactivated rather than deleted. For every detail, see [Changing a patient's current plan](building-an-exercise-plan.md#changing-a-patients-current-plan).

> **Active and paused episodes only.** The plan builder works on episodes that are active or paused. For a discharged or completed episode, **Manage plan** opens the library without the patient loaded.

## Assigning exercises during enrollment

If your clinic has exercises enabled, the **New episode** form has an optional **Assign exercises** section, so you can start the patient's home program in the same step as enrolling them.

1. Expand **Assign exercises** and click **Add exercise**.
2. Choose an **Exercise**. A **Preview** shows its photo, instructions, and default dosage.
3. Optionally open **Prescription Overrides** to change **Sets**, **Reps**, **Hold (sec)**, or **Rest (sec)**. Leave them blank to use the exercise's defaults.
4. Optionally set a **Frequency** and **Notes**.
5. Repeat for each exercise, then finish creating the episode.

If an exercise can't be assigned (for example, it's private to another patient), RTMLink still creates the episode and tells you which exercises were skipped. You can add exercises from the episode page afterward.

## The Exercises tab

Open the patient's episode and select the **Exercises** tab.

![A patient's Exercises tab with three exercises from a program, each with its prescription, frequency, program, and status, and the Manage plan, New Exercise for this Patient, Assign Exercise, Assign Program, and Print Handout buttons.](../.gitbook/assets/exercises/episode-exercises-tab.png)

| Column | What it shows |
|--------|---------------|
| **#** | The order the patient does them in. |
| **Exercise** | The exercise name. A lock icon marks an exercise that's private to this patient. |
| **Prescription** | Sets, reps, and hold, for example **3 sets x 10 reps x 30s hold**. |
| **Frequency** | The older frequency setting, if one was chosen. |
| **Program** | The program it came from, or **Individual** if added on its own. |
| **Status** | **Active** or **Inactive**. |

> **The table doesn't show everything.** Rest, weight, side, and the times-a-day and days-a-week schedule you set in the plan builder don't appear in these columns. Click **Manage plan** to see a patient's full prescription.

### Quick actions

Across the top of the tab, besides **Manage plan**:

- **New Exercise for this Patient:** create a new exercise that's [private to this patient](the-exercise-library.md#patient-specific-exercises) (the lock toggle is on by default) and assign it when you save.
- **Assign Exercise:** add one exercise. Pick the **Exercise** (a preview shows its photo, instructions, and defaults), optionally fill in **Prescription Overrides**, **Frequency**, and **Notes**, then click **Assign**.
- **Assign Program:** add every exercise in a program at once. Pick the **Exercise Program** and click **Assign Program**.
- **Print Handout:** open the patient's printable exercise sheet in a new tab. It stays available after the episode is discharged, so you can reprint it later.

> **Frequency versus schedule.** The **Frequency** choice in these quick actions (**Daily**, **3x per week**, **Twice daily**, **Every other day**, **As needed**) is the older way to set how often. Once an exercise has a times-a-day or days-a-week schedule from the plan builder, the patient sees that schedule instead, and changing **Frequency** here has no effect. To change how often, use **Manage plan**.

## Editing an assigned exercise

Each exercise has an actions menu at the end of its row:

- **Edit Prescription:** change the sets, reps, hold, rest, frequency, or notes for this patient.
- **Edit Exercise:** open the exercise itself for editing (your clinic's own exercises only). Changes apply to every patient who has it. When you save, you return to this episode.
- **Customize this Exercise:** on a platform exercise, make an editable copy for this patient. Leave **Lock to [patient]** on to keep the copy private to them (so it can hold their own photos or video), or turn it off to add the copy to your library for anyone. Click **Customize**. RTMLink switches the patient to the copy, keeps their completions and history, and opens the copy for editing. The shared platform original is unchanged.

## Deactivating and reactivating

- **Deactivate:** on an active exercise, take it out of the patient's current program. It stays in the episode's history and stops appearing in the patient's exercises.
- **Reactivate:** on an inactive exercise, put it back in the patient's program.

RTMLink asks you to confirm either one. To change several at once, tick the exercises and use **Deactivate selected** or **Reactivate selected**.

Drag rows to change the order the patient sees.

> **Deactivate, not delete.** RTM is a billable medical service, so an exercise the patient already worked on is never erased. Deactivating takes it out of their current routine while preserving the record, and you can reactivate it later if the patient resumes it.

## Related articles

- [Building an exercise plan](building-an-exercise-plan.md)
- [Understanding the Home Exercise Program](understanding-hep.md)
- [The exercise library](the-exercise-library.md)
- [Exercise programs](exercise-programs.md)
- [Tracking exercise adherence](tracking-exercise-adherence.md)
- [The patient's exercise experience](the-patient-exercise-experience.md)
- [Enrolling a patient](../episodes/enrolling-a-patient.md)
