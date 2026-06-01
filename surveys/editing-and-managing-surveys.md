---
description: Editing, activating, duplicating, setting a default, and deleting surveys in RTMLink — and how survey versioning keeps past responses unchanged when you make edits.
---

# Editing & managing surveys

Once a survey exists, you can refine its questions, change its status, copy it, or retire it. Open **Check-In Templates** in the sidebar, then use the actions menu on a survey's row — or open the survey and use the buttons at the top.

## Editing a survey

Choose **Edit** to change the survey's names, description, or questions. Editing works exactly like [creating a survey](creating-a-survey.md): the same details and question builder.

> **Editing is safe for past data.** Surveys are versioned. When you change a survey's questions, RTMLink saves a new snapshot, and any responses already submitted stay tied to the version the patient actually saw. Old responses are never rewritten — they always show the questions and wording from the day they were answered.

## Activating and deactivating

Use the **Status** toggle to make a survey active or inactive.

- **Inactive** surveys can't be assigned to new episodes, but patients already on the survey keep using it.
- You **can't deactivate the default survey**. Make a different survey the default first, then deactivate this one.

## Setting the default survey

Turn on **Default Survey** to make a survey the one pre-selected when enrolling a patient.

- There's only **one default per clinic** — setting a new default automatically clears the old one.
- The default is **always active**; turning on Default also turns on Status.

## Duplicating a survey

To reuse a survey as a starting point, choose **Duplicate**. RTMLink asks for a **New Survey Name**, then creates a copy that includes all of the original's questions and answer options. The copy is independent — edit it freely without affecting the original.

This is the fastest way to build a variation (for example, a knee protocol based on your shoulder protocol).

## Deleting a survey

Choose **Delete** to retire a survey. It's removed from the list and can no longer be assigned to new episodes. Responses already collected are preserved, and any episode currently using the survey keeps working.

> If a survey is in active use, consider **deactivating** it instead of deleting — that keeps it out of new enrollments while leaving everything exactly as is.

## Previewing your changes

After editing, use **Preview Survey** to see the patient's view before patients do. See [Previewing a survey](previewing-a-survey.md).

## Related articles

- [Creating a survey](creating-a-survey.md)
- [Understanding surveys](understanding-surveys.md)
- [Previewing a survey](previewing-a-survey.md)
- [Understanding survey responses](understanding-survey-responses.md)
