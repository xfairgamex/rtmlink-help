---
description: "A billing staff quickstart for RTMLink: how RTM claims are earned, and the review-approve-export path from suggestion to submitted claim."
---

# Quickstart: billing

If you handle claims, RTMLink does the derivation for you: it watches each patient's activity and surfaces billable items for you to review. Your job is to check them, approve them, and get them out. Here is the flow.

## 1. Know the two clocks

RTM bills on two separate schedules: device-supply codes over a rolling 30-day window (based on the patient's interaction days), and treatment-management codes over the calendar month (based on provider minutes plus a live contact). This is why an episode shows two billing cards. See [Understanding RTM billing](../billing/understanding-rtm-billing.md) and the [CPT code reference](../reference/cpt-code-reference.md).

## 2. Review the suggestions

Open the **Billing** page to see the claims RTMLink has derived. Each row shows its codes, the qualifying evidence, and its clinical note status. See [Billing suggestions](../billing/billing-suggestions.md).

## 3. Make sure notes are signed

Treatment claims should carry a signed clinical note. The **Clinical Note** column and the "Needs signature" filter show what is outstanding; providers sign their own. See [Clinical notes and sign-off](../billing/clinical-notes.md).

## 4. Approve and send

Mark claims billed, or send them to DrChrono if your clinic exports there (one appointment per claim). See [Approving and rejecting claims](../billing/approving-and-rejecting-claims.md) and [Exporting to DrChrono](../billing/exporting-to-drchrono.md).

## Good to know

- Treatment codes bill **once per patient per calendar month**, aggregating across all of that patient's episodes, so a multi-episode patient produces one monthly treatment claim, not one per episode.
- Signing a note is a documentation safeguard, not a hard gate; billing is not blocked by an unsigned note, but signing is good practice.

Keep [Common issues](../troubleshooting/common-issues.md) nearby for the "why isn't this claim showing" questions.

## Related articles

- [Understanding RTM billing](../billing/understanding-rtm-billing.md)
- [Billing suggestions](../billing/billing-suggestions.md)
- [Configuring billing rates](../billing/configuring-billing-rates.md)
