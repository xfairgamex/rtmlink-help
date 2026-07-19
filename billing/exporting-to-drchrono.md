---
description: "Getting claims out of RTMLink: CSV exports for any billing system, and the DrChrono integration that creates appointments with billing line items directly in your EHR."
---

# Exporting claims and sending to DrChrono

When claims are ready, you can hand them to your billing workflow two ways: download a CSV that works with any system, or, if your clinic is connected to DrChrono, send each claim straight into the EHR as an appointment with billing line items.

## Exporting a CSV

- **Everything at once:** click **Export All Ready** at the top of the **Billing** page to download every ready-to-bill claim.
- **A specific batch:** select rows with the checkboxes and choose **Export Selected**.

Either way, users with billing approval also see a checkbox: **Also mark these claims as billed**. Check it once the claims have been entered in your billing system, and they move to **Billed** in the same step.

The CSV includes everything a biller needs per claim line: patient details and MRN, the episode and claim identifiers, CPT code, units, service date, billing period, provider, diagnosis codes, the estimated amount, status, the qualification evidence, and the clinical note with its signed state.

> Exporting stamps the claim's **Last Exported** time for reference, but it does not change the claim's status. Only marking it billed does that.

## Sending a claim to DrChrono

If your clinic has an active DrChrono connection and the patient is linked to a DrChrono chart, each claim's row menu offers **Send to DrChrono**:

1. Choose **Send to DrChrono** on the claim.
2. Review the appointment details: provider, appointment profile, office, exam room, date and time, and the ICD-10 codes (pre-filled from the episode or the patient's past appointments).
3. The claim's billing line items are listed and locked: all codes on the claim are submitted on one appointment.
4. The clinical note rides along as the appointment's SOAP Assessment note.
5. Confirm. RTMLink creates the appointment and shows a link so you can open it in DrChrono.

Each claim maps to **one** DrChrono appointment. If part of a claim was already sent, sending again adds the remaining line items to the same appointment rather than creating a second one.

## Linking to an existing appointment

Already created the appointment in DrChrono yourself? Choose **Link Appointment** on the claim, pick the patient's appointment from the list, and RTMLink attaches the claim to it and marks it billed.

## Undoing a send

**Delete from DrChrono** removes the appointment from DrChrono, unlinks every code on the claim, and returns the claim to **Ready to Bill**. If someone deleted the appointment inside DrChrono, the claim's detail page shows a warning and the same action simply resets the claim.

## Role permissions

Exporting and DrChrono actions need billing export access: Clinic Owners and Billing Staff clinic-wide, Providers only for their own assigned patients' claims. The bulk export button works clinic-wide, so it is not available to providers.

## Related articles

- [Approving and rejecting claims](approving-and-rejecting-claims.md)
- [Billing claims and suggestions](billing-suggestions.md)
- [Understanding RTM billing](understanding-rtm-billing.md)
