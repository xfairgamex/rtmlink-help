---
description: "Reusable HEP templates in RTMLink: saving a program as a template, the HEP Templates tab, editing a template, copying platform templates, assigning a template to a patient, and archiving templates you no longer use."
---

# HEP templates

A **HEP template** is a named, reusable set of exercises, for example "Post-op knee, phase 1." Instead of building the same program patient after patient, you save it once as a template and start from it whenever you need it.

Templates live on the **HEP Templates** tab of the exercise library: click **Exercises** in the left sidebar, then **HEP Templates**.

## Creating a template

There's no blank "new template" form. A template is made by collecting exercises:

1. Build a program in the exercise library: add exercises and set their sets, reps, weight, side, and schedule. See [Building a patient's exercise program](building-a-patients-program.md).
2. Click **Save as HEP template**.
3. Enter a **Template name** (required) and, optionally, a **Category**.
4. Click **Save template**.

> **Patient-specific and deleted exercises are left out.** An exercise that's private to one patient is never saved into a template, and neither is one that's been deleted from the library. RTMLink tells you how many it left out.

## The HEP Templates tab

Each template shows as a card with:

- Thumbnails of its first few exercises.
- Its name, number of exercises, estimated minutes, and category, for example `6 exercises · ~12 min · Knee`.
- A badge: **Platform** (from the shared RTMLink library), **Custom** (your clinic's), or **Archived**.
- **Assigned N×**: how many of your clinic's episodes it's been assigned to.

Use **Search HEP templates** to find one by name. **Filters** narrow the list to templates containing an exercise with the category, difficulty, or equipment you pick.

## Editing a template

Click a template card to open it in the full-screen template editor.

1. **Rename it** by clicking the name at the top.
2. **Change the exercises** in the table: set **Sets**, **Reps**, **Hold (sec)**, **Rest (sec)**, **Weight**, **Side**, and **Schedule** (times a day and days a week), add a note for each, reorder with the up and down arrows, or remove with **×**. Blank fields use each exercise's library default. See [Building a patient's exercise program](building-a-patients-program.md#step-2-review-and-set-the-prescription) for what each field means.
3. **Add exercises** by typing a name in the bar under the table. Matching exercises appear as cards: click **+** to add one, or click a card for a large preview with its illustration or video and steps.
4. Click **Details** to set the **Category**, a **Provider description** for your team, and a **Patient summary** (a simpler description shown to patients). Click **Save details**.
5. Click **Save template**.

> **Unsaved changes are never dropped silently.** If you've changed the template and then click **Assign to patient**, **Duplicate**, or **Library**, RTMLink asks whether to save first. For example, **Save, then assign** updates the template and then assigns it, while **Assign without saving** assigns what's on screen and leaves the saved template as it was.

**Duplicate** makes a copy named "[template name] (copy)" and opens it, which is handy for making a variation.

> **A template is a starting point, not a live link.** Assigning a template copies its exercises onto the patient's program. Editing the template later doesn't change patients who already have it, and you can adjust any patient's program without affecting the template.

## Platform templates

Templates marked **Platform** come from the shared RTMLink library. They open read-only, labeled **Platform template**.

- To use one as is, click **Assign to patient**.
- To make it your own, click **Duplicate to your library**. RTMLink copies it into your clinic's templates and opens the copy, which you can edit.

## Assigning a template to a patient

- **From the template:** open it and click **Assign to patient**. Pick the patient's episode, choose whether to notify them, and click **Assign & send** (or **Assign**). The exercises are added after whatever the patient already has. See [Assign it to a patient](building-a-patients-program.md#step-3-assign-it-to-a-patient).
- **Into a patient's current program:** click **For a patient** on the HEP Templates tab (or **Manage program** on the patient's episode), pick the patient, then open the template. If the patient already has exercises, choose **Add to current program** or **Replace current program**, then click **Update program**. See [Changing a patient's current program](building-a-patients-program.md#changing-a-patients-current-program).
- **From the episode:** **Assign HEP template** on the episode's **Exercises** tab adds a whole template in one step. See [Assigning exercises to a patient](assigning-hep-to-an-episode.md).

## Archiving a template

When your clinic stops using a template, archive it instead of leaving it in everyone's way. Only clinic owners can archive and restore templates.

1. Open the template and click **Archive**.
2. Confirm in the **Archive this HEP template?** window.

An archived template leaves the HEP Templates tab and every picker. Patients who already have its exercises keep their program.

**To restore it**, click **Show archived** on the HEP Templates tab, open the template, and click **Restore**.

## Who can do this

Clinic owners, providers, and staff can open templates and assign them. Clinic owners and providers can save, edit, and duplicate templates. Only clinic owners can archive and restore them.

## Related articles

- [Building a patient's exercise program](building-a-patients-program.md)
- [The exercise library](the-exercise-library.md)
- [Assigning exercises to a patient](assigning-hep-to-an-episode.md)
- [Understanding the Home Exercise Program](understanding-hep.md)
