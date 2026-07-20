---
description: "A quick reference to the RTM CPT codes RTMLink bills: what each one is for, and the interaction days, provider minutes, and contacts it requires."
---

# CPT code reference

RTM billing splits into two families on two different clocks. Device-supply codes are earned over a rolling 30-day window based on the patient's engagement; treatment-management codes are earned over the calendar month based on provider time plus a live contact. This is the quick reference; for how the clocks work day to day, see [Billing window progress](../billing/billing-window-progress.md).

## Device supply (30-day window, based on interaction days)

| Code | What it is | Requirement |
| --- | --- | --- |
| `98975` | Initial device setup and patient education | Once per episode |
| `98977` | Device supply, musculoskeletal system | 16 or more interaction days in the 30-day window |
| `98985` | Device supply, partial window | 2 to 15 interaction days in the 30-day window |

An **interaction day** is any calendar day the patient answered at least one survey question or marked at least one exercise complete. Device-supply codes surface only after the 30-day window closes.

> `98976` (device supply, respiratory system) also exists in the code set, but RTMLink's clinics bill the musculoskeletal code, `98977`.

## Treatment management (calendar month, based on provider time)

| Code | What it is | Requirement |
| --- | --- | --- |
| `98979` | First 10 minutes of provider treatment time | 10+ minutes in the month, plus one interactive contact |
| `98980` | First 20 minutes of provider treatment time | 20+ minutes in the month, plus one interactive contact |
| `98981` | Each additional 20 minutes | A full additional 20 minutes in the month |

Treatment-management codes are billed **per patient per calendar month**: RTMLink aggregates minutes and contacts across all of a patient's episodes into one claim for the month. Every treatment claim also needs at least one **interactive contact** (a live phone, video, or in-person conversation). See [Logging interactive contacts](../episodes/logging-interactive-contacts.md).

## Related articles

- [Understanding RTM billing](../billing/understanding-rtm-billing.md)
- [Billing window progress](../billing/billing-window-progress.md)
- [Glossary](glossary.md)
