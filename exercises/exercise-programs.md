---
description: Building reusable exercise programs in RTMLink — what a program is, creating one and adding ordered exercises with per-exercise prescriptions, and importing programs from the platform library.
---

# Exercise programs

An **exercise program** is a reusable, ordered set of exercises — for example, "Post-op knee — week 1." Instead of assigning exercises one at a time, you build a program once and assign the whole thing to a patient in a single step.

Open **Exercise Programs** in the left sidebar, under the **Templates** group.

## Reading the list

| Column | What it shows |
|--------|---------------|
| **Name** | The program name, with its category beneath. |
| **Exercises** | How many exercises the program contains. |
| **Duration** | The estimated time to complete it. |
| **Source** | **Platform**, **Imported**, or **Custom** — the same idea as in the [exercise library](the-exercise-library.md#platform-imported-and-custom-exercises). |

Use **Import from Library** to copy a ready-made platform program into your clinic, where you can edit it.

## Creating a program

Click **New Exercise Program** and fill in the form.

**Program Details**
- **Name** (required).
- **Category**.
- **Estimated Duration (min)** — roughly how long the program takes.

**Description**
- **Provider Description** — notes for your team.
- **Patient Summary** — a simpler description shown to the patient.

**Exercises**

This is where you assemble the routine. Click **Add Exercise** for each one, then set its parameters:

- **Exercise** — choose from your library.
- **Sets** and **Reps** — these **override the exercise's defaults** for this program. Leave them blank to use the exercise's own defaults.
- **Hold (sec)** and **Rest (sec)**.
- **Notes** — guidance specific to this program.

**Drag exercises to reorder them** — the order here is the order the patient sees. Use **Collapse all** / **Expand all** to manage a long list.

> **A program is a template, not a live link.** When you assign a program to a patient, RTMLink copies its exercises onto the episode as individual assignments. Editing the program later doesn't change patients who already have it — and you can fine-tune any patient's copy without affecting the program. See [Assigning HEP to an episode](assigning-hep-to-an-episode.md).

## Related articles

- [The exercise library](the-exercise-library.md)
- [Assigning HEP to an episode](assigning-hep-to-an-episode.md)
- [Understanding the Home Exercise Program](understanding-hep.md)
