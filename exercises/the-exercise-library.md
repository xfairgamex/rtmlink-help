---
description: "Your clinic's exercise library in RTMLink: browsing and filtering exercises, what Platform, Imported, and Custom exercises are, duplicating a platform exercise to edit it, hiding ones you don't use, and creating exercises with instructions, media, tags, and default prescriptions."
---

# The exercise library

The **exercise library** is your clinic's collection of exercises. Each exercise holds the instructions, images, and an optional demonstration video a patient sees, plus default prescription values (sets, reps, hold) you reuse every time you assign it. You build the library here once, then assign exercises to patients from their episodes.

Open it from **Exercises** in the left sidebar, under the **Templates** group. (You'll only see it if your clinic has exercises enabled.)

![The exercise library, with each exercise's category, tags, whether it has a video, its source, and default sets and reps.](../.gitbook/assets/exercises/exercise-list.png)

## Reading the list

Each row is one exercise:

| Column | What it shows |
|--------|---------------|
| **Name** | The exercise name. A lock icon means it's private to one patient (see [Patient-specific exercises](#patient-specific-exercises)). |
| **Category** | The exercise category, shown as a badge. |
| **Tags** | Any free-text labels added to the exercise, shown as gray badges. |
| **Video** | Whether a demonstration video is attached. |
| **Source** | Where it came from: **Platform**, **Imported**, or **Custom**. |
| **Sets** / **Reps** | The default prescription, if you've set one. |

Filter the list by **category**, by **source**, by whether an exercise is **Patient-specific**, and by whether it's **Hidden**. You can also search by name or by tag.

## Platform, imported, and custom exercises

RTMLink ships a shared **platform library** of ready-made exercises every clinic can use. Platform exercises appear in your library alongside your own, marked with a **Platform** source badge:

- **Platform** exercises are read-only: you can assign them to patients, but you can't edit or delete the shared originals.
- **Imported** exercises are editable copies you made from a platform exercise.
- **Custom** exercises are ones you created from scratch.

### Duplicate a platform exercise to edit it

If a platform exercise is *almost* right, make yourself an editable copy:

1. Open the exercise's row menu (or open the exercise and use its **Duplicate to edit** button).
2. Click **Duplicate to edit**.
3. Confirm on the **Duplicate to your library** prompt.

RTMLink creates an editable **(copy)** in your own library (images included) and leaves the shared platform version untouched. The copy shows an **Imported** source badge. When you start from the exercise's own page, RTMLink opens the new copy for editing right away.

> Your changes to an imported copy never touch the shared platform version or any other clinic.

### Hide a platform exercise you don't use

To keep your library focused, you can remove a platform exercise from view without affecting other clinics:

- Click **Hide** on a platform exercise's row menu to remove it from your library.
- To bring it back, switch the **Hidden** filter to **Hidden only** or **Visible + hidden**, find the exercise, and click **Restore**.

## Creating an exercise

Click **New Exercise** and fill in the form, which is organized into sections:

**Exercise Details**
- **Name** (required).
- **Category:** the body area or function the exercise targets. The default list spans physical therapy and chiropractic (Shoulder, Knee, Hip, Spine, Core, Ankle/Foot, Wrist/Hand, Elbow, Neck, Balance & Gait), occupational therapy (Hand Therapy, Fine Motor, Daily Activities (ADL)), and speech-language pathology (Swallowing (Dysphagia), Articulation & Speech, Voice, Language), plus Cognition and General. Your clinic can add its own (see [Managing categories](#managing-categories)).
- **Tags:** optional free-text labels for everything the exercise addresses (for example, shoulder flexion or elbow extension). Press Enter after each one. Tags are searchable from the list.

> Starting from something similar? Use **Copy details from exercise** to pull in another exercise's name, instructions, tags, and default prescription. Media is never copied, so add this exercise's own images and video.

**Content**
- **Description:** a short summary.
- **Patient Instructions:** the step-by-step guidance the patient reads while doing the exercise.

**Media**
- Attach a demonstration video and up to ten **Images** (PNG, JPG, or WebP, max 2 MB each). You can paste an image straight from your clipboard with **Cmd/Ctrl + V**. See [Exercise videos](exercise-videos.md) for the video options.

**Defaults**
- **Sets**, **Reps**, and **Hold (seconds)**: the default prescription that fills in automatically when you assign this exercise. You can override these per patient at assignment time.

Editing opens the same form; **View** shows a read-only summary.

## Managing categories

Your clinic can add its own categories on top of the built-in ones:

1. Click **Manage Categories** at the top of the exercise list.
2. In the **Exercise Categories** window, click **Add category** and type a name.
3. Click **Save categories**.

Your categories appear in the **Category** dropdown right away. The platform defaults (Shoulder, Knee, Hip, and so on) are always included.

## Patient-specific exercises

Sometimes you want an exercise that belongs to a single patient, for example one holding that patient's own photos or video. When you create an exercise from a patient's episode, you can **lock it to that patient**. A locked exercise holds that patient's media, can never be assigned to anyone else, and shows a lock icon in the library.

## Related articles

- [Understanding the Home Exercise Program](understanding-hep.md)
- [Exercise videos](exercise-videos.md)
- [Exercise programs](exercise-programs.md)
- [Assigning HEP to an episode](assigning-hep-to-an-episode.md)
