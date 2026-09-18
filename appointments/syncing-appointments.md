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

The Appointments page offers **Import Appointments** to every clinic except one connected to DrChrono, where **Sync from DrChrono** takes its place instead. A clinic on HENO keeps the import button alongside its nightly sync on purpose: the nightly report is an overnight snapshot, so a CSV is the faster way to pull in today's changes. The Check-Ins queue offers the same import under **Upload Appointments**, and that button does hide for any connected EHR.

The CSV columns:

| Column | Example | Notes |
| --- | --- | --- |
| Patient Name | Jane Smith | required, must match a patient in your clinic |
| Date | 2026-03-17 | required |
| Time | 09:00 AM | required |
| Duration (minutes) | 30 | defaults to 30 |
| Provider Name | Dr. Sarah Johnson | optional |
| Reason / Chief Complaint | Follow-up shoulder PT | optional |
| Status | Confirmed | optional |

A patient RTMLink does not recognize is created and linked rather than rejected, and a provider name it does not recognize goes to the **Unmapped EMR providers** queue on the **Integrations** page for your Clinic Owner to match up. Rows only fail when RTMLink cannot read the date or time, cannot split a single name into a first and last name, or finds no patient name or identifier at all. Failures are reported when the import completes, with a file you can download, fix, and re-import.

> **Your clinic may be offered fewer columns than this.** If your EMR has a preset in RTMLink, the mapping step pre-fills itself and hides the columns your export never fills. A HENO clinic, for example, is not offered **Patient Name**, **Date**, or **Time** at all, because its export carries first and last name and a single start timestamp instead. Clinics with no preset are offered every column.

> **An import replaces the days it covers, it does not just add to them.** For each clinic day your file covers, RTMLink removes previously imported appointments that are not in the new file, so a visit cancelled in your EMR disappears here too instead of lingering on the Check-Ins queue. That only applies to rows carrying an appointment identifier, so a hand-made partial sheet never deletes anything. Import the whole day, not a few corrected rows.

> **Why import at all?** Appointments make the Check-Ins queue focus on today's patients and give the review page its appointment chips. A quick morning import keeps the daily review aligned with the front desk schedule.

## Role permissions

Importing and manual syncing are for Clinic Owners; the appointment list itself is visible to everyone.

## Related articles

- [Viewing appointments](viewing-appointments.md)
- [The Check-Ins queue](../check-ins/the-check-ins-queue.md)
- [Exporting to DrChrono](../billing/exporting-to-drchrono.md)
