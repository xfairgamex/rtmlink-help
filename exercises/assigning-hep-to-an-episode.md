---
description: "Giving a patient their home exercises in RTMLink: managing their program from the episode, assigning exercises when you create the episode, the episode's Exercises tab, customizing an exercise for one patient, and deactivating or reactivating exercises."
---

# Assigning exercises to a patient

A patient's exercises live on their **episode**. The [library](the-exercise-library.md) and [HEP templates](hep-templates.md) are your building blocks; the episode is where one patient's program is kept and tracked.

## Ways to give a patient exercises

- **Manage program** on the episode's **Exercises** tab: the main way to set up or change a patient's program. See below.
- **For a patient** in the exercise library: the same program builder, started from the library. See [Building a patient's exercise program](building-a-patients-program.md#changing-a-patients-current-program).
- **When you create the episode:** the optional **Assign exercises** section on the enrollment form. See [Assigning exercises during enrollment](#assigning-exercises-during-enrollment).
- **Quick actions on the Exercises tab:** add one exercise or one HEP template without opening the program builder.

## Managing a patient's program from the episode

1. Open the patient's episode and select the **Exercises** tab.
2. Click **Manage program**.
3. The exercise library opens with this patient's current exercises loaded into the program.
4. Add, remove, reorder, and set each exercise's **Sets**, **Reps**, **Hold (sec)**, **Rest (sec)**, **Weight**, **Side**, **Times / day**, and **Days / week**.
5. Click **Update program**, choose whether to notify the patient, and confirm.

Exercises you keep retain their history, and exercises you remove are deactivated rather than deleted. For every detail, see [Changing a patient's current program](building-a-patients-program.md#changing-a-patients-current-program).

> **Active and paused episodes only.** **Manage program** appears only on episodes that are active or paused. A discharged or completed episode's exercises can be viewed and printed, but not changed.

## Assigning exercises during enrollment

If your clinic has exercises enabled, the **New episode** form has an optional **Assign exercises** section, so you can start the patient's home program in the same step as enrolling them.

1. Expand **Assign exercises** and click **Add exercise**.
2. Choose an **Exercise**. A **Preview** shows its photo, instructions, and default dosage.
3. Optionally set the prescription (the same fields as **Assign Exercise**, below). Leave any field blank to use the exercise's default.
4. Repeat for each exercise, then finish creating the episode.

If an exercise can't be assigned (for example, it's private to another patient), RTMLink still creates the episode and tells you which exercises were skipped. You can add exercises from the episode page afterward.

## The Exercises tab

Open the patient's episode and select the **Exercises** tab.

![A patient's Exercises tab with three exercises from a HEP template, each with its prescription, schedule, template, and status, and the Manage program, New Exercise for this Patient, Assign Exercise, Assign HEP template, and Print Handout buttons.](../.gitbook/assets/exercises/episode-exercises-tab.png)

| Column | What it shows |
|--------|---------------|
| **#** | The order the patient does them in. |
| **Exercise** | The exercise name. A lock icon marks an exercise that's private to this patient. |
| **Prescription** | Everything the patient is asked to do, for example `3 sets · 10 reps · 30s rest · 5 lb · Left side`. |
| **Schedule** | How often, for example **Twice a day, 3 days a week**. Exercises assigned with the older frequency setting show that label (for example, **Every other day**). |
| **Template** | The HEP template it came from, or **Individual** if added on its own. |
| **Status** | **Active** or **Inactive**. |

If the patient has no exercises yet, the tab reads **No exercises assigned yet**.

### Quick actions

Across the top of the tab, besides **Manage program**:

- **New Exercise for this Patient:** create a new exercise that's [private to this patient](the-exercise-library.md#patient-specific-exercises) (the lock toggle is on by default) and assign it when you save. Clinic owners and providers only.
- **Assign Exercise:** add one exercise. Pick the **Exercise** (a preview shows its photo, instructions, and defaults), set the prescription (below), then click **Assign**.
- **Assign HEP template:** add every exercise in a template at once. Pick the **HEP template** and click **Assign template**.
- **Print Handout:** open the patient's printable exercise sheet in a new tab. It stays available after the episode is discharged, so you can reprint it later.

### Setting the prescription

**Assign Exercise** and **Edit Prescription** use the same fields:

- **Prescription Overrides:** **Sets**, **Reps**, **Hold (sec)**, **Rest (sec)**, and **Weight** (for example, "5 lb"). Leave any blank to use the exercise's default.
- **Side:** **Left** or **Right**. Leave it as **Both** for exercises done on both sides.
- **Times a day:** **Once a day** up to **6 times a day**.
- **Days a week:** **Every day** down to **1 day a week**.
- **Notes:** a note the patient sees with the exercise.

> **Updating an older schedule.** If an exercise was assigned with the older frequency setting, **Edit Prescription** shows it as the **Current schedule**. It stays as it is until you pick **Times a day** or **Days a week**, which replaces it.

## Editing an assigned exercise

Each exercise has an actions menu at the end of its row:

- **Edit Prescription:** change the prescription, schedule, or notes for this patient (fields above).
- **Edit Exercise:** open the exercise itself for editing (your clinic's own exercises only). Changes apply to every patient who has it. When you save, you return to this episode.
- **Customize this Exercise:** on a platform exercise, make an editable copy for this patient. Leave **Lock to [patient]** on to keep the copy private to them (so it can hold their own photos or video), or turn it off to add the copy to your library for anyone. Click **Customize**. RTMLink switches the patient to the copy, keeps their completions and history, and opens the copy for editing. The shared platform original is unchanged.

## Deactivating and reactivating

- **Deactivate:** on an active exercise, take it out of the patient's current program. It stays in the episode's history and stops appearing in the patient's exercises.
- **Reactivate:** on an inactive exercise, put it back in the patient's program.

RTMLink asks you to confirm either one. To change several at once, tick the exercises and use **Deactivate selected** or **Reactivate selected**.

Drag rows to change the order the patient sees.

> **Deactivate, not delete.** RTM is a billable medical service, so an exercise the patient already worked on is never erased. Deactivating takes it out of their current routine while preserving the record, and you can reactivate it later if the patient resumes it.

## Who can do this

Clinic owners, providers, and staff can manage programs and use every action on the tab except **New Exercise for this Patient**, which needs permission to create exercises (clinic owners and providers). Billing staff and auditors see the tab read-only and can still print the handout.

## Related articles

- [Building a patient's exercise program](building-a-patients-program.md)
- [Understanding the Home Exercise Program](understanding-hep.md)
- [The exercise library](the-exercise-library.md)
- [HEP templates](hep-templates.md)
- [Tracking exercise adherence](tracking-exercise-adherence.md)
- [The patient's exercise experience](the-patient-exercise-experience.md)
- [Enrolling a patient](../episodes/enrolling-a-patient.md)
