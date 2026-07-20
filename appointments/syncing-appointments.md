---
description: "How appointments get into RTMLink: automatic DrChrono sync with real-time updates, the manual Sync button, and the CSV import for clinics without an EHR connection."
---

# Getting appointments into RTMLink

RTMLink never asks you to type appointments in by hand. They arrive one of two ways, depending on whether your clinic has an EHR connection.

## With DrChrono connected

Appointments sync automatically:

- A full sync runs every hour on its own.
- Changes in DrChrono (new, modified, or deleted appointments) also push over in near real time.
- Need it sooner? The **Sync from DrChrono** button at the top of the Appointments page queues an immediate pull and confirms with **Sync queued**.

Synced appointments carry their DrChrono provider, status, and reason, and power everything downstream: the Today view, the Check-Ins queue filter, the episode's Appointments tab, and claim linking.

## Without an EHR: CSV import

Clinics without a connection use the **Import Appointments** button on the Appointments page (the same import is offered on the Check-Ins queue). The CSV columns:

| Column | Example | Notes |
| --- | --- | --- |
| Patient Name | Jane Smith | required, must match a patient in your clinic |
| Date | 2026-03-17 | required |
| Time | 09:00 AM | required |
| Duration (minutes) | 30 | defaults to 30 |
| Provider Name | Dr. Sarah Johnson | optional |
| Reason / Chief Complaint | Follow-up shoulder PT | optional |
| Status | Confirmed | optional |

Rows that fail (a patient name that does not match, or a date that cannot be parsed) are reported when the import completes, with a failures file you can download, fix, and re-import.

> **Why import at all?** Appointments make the Check-Ins queue focus on today's patients and give the review page its appointment chips. A quick morning import keeps the daily review aligned with the front desk schedule.

## Role permissions

Importing and manual syncing are for Clinic Owners and admins; the appointment list itself is visible to everyone.

## Related articles

- [Viewing appointments](viewing-appointments.md)
- [The Check-Ins queue](../check-ins/the-check-ins-queue.md)
- [Exporting to DrChrono](../billing/exporting-to-drchrono.md)
