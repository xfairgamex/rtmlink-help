---
description: "Moving claims through the billing workflow in RTMLink: marking claims billed, rejecting them with a reason, correcting mistakes with Change Status, and acting on many claims at once."
---

# Approving and rejecting claims

Once a claim is on the **Ready to Bill** tab, someone on your team enters it in your billing system and then records the outcome in RTMLink. This article covers the three workflow actions and who can use them.

## How the workflow fits together

RTMLink does not submit claims to insurance itself. The intended loop is: review the claim's evidence, sign its clinical note, bill it in your EMR or billing system, then come back and **Mark Billed** so the worklist stays true. Claims that should not be billed get **Reject** with a reason.

> A claim with several codes moves as one unit. Marking a month's claim billed marks its `98980` and every `98981` add-on together, and the confirmation names all the affected codes before you commit.

## Marking a claim billed

1. On **Billing**, open the claim's row menu and choose **Mark Billed** (also available at the top of the claim's detail page).
2. Confirm the prompt, which asks you to confirm the code has been billed in your EMR.

The claim moves to the **Billed** tab, and its **Billed This Month** card count ticks up.

## Rejecting a claim

1. From the claim's row menu, choose **Reject**.
2. Pick a **Rejection Reason**: **Does not qualify**, **Already billed**, **Window incomplete**, or **Other**.
3. Add **Additional Notes** (required when the reason is Other), then confirm.

Rejected claims keep their evidence and history and live on the **Rejected** tab, so nothing is lost if you need to revisit the decision.

## Correcting a mistake with Change Status

Billed something by accident, or rejected the wrong claim? **Change Status** moves a claim to any status directly:

1. Open the claim's row menu and choose **Change Status**.
2. Pick the new status: **Ready to Bill**, **Billed**, or **Rejected** (rejecting here asks for the same reason fields).
3. Click **Update Status**.

The new status applies to every code on the claim, so add-on codes never drift out of sync with their primary.

> If the claim is linked to a DrChrono appointment, changing the status only updates RTMLink. Use **Delete from DrChrono** if the appointment there needs to go too. See [Exporting claims and sending to DrChrono](exporting-to-drchrono.md).

## Acting on many claims at once

Select several rows with the checkboxes and use the bulk actions: **Mark Billed** for a batch you have just entered in your billing system, or **Export Selected** to download them as a CSV first. Selecting any code of a claim selects the whole claim.

## Role permissions

| Action | Clinic Owner | Provider | Staff | Billing Staff | Auditor |
| --- | --- | --- | --- | --- | --- |
| Mark Billed / Reject | Yes | Own patients only | No | Yes | No |
| Change Status | Yes | No | No | Yes | No |

## Related articles

- [Understanding RTM billing](understanding-rtm-billing.md)
- [Billing claims and suggestions](billing-suggestions.md)
- [Clinical notes and sign-off](clinical-notes.md)
- [Exporting claims and sending to DrChrono](exporting-to-drchrono.md)
