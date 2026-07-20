---
description: "Turning on the RTMLink front desk check-in kiosk: enabling it, setting the PIN, and sharing the private link with your front desk."
---

# Setting up check-in

The front desk check-in kiosk is a simple, tablet-friendly page your front-desk staff use to see who is arriving today and enroll or manage them in RTM, without signing into the full app. This guide turns it on; using it is covered in [Using the check-in kiosk](using-the-check-in-kiosk.md).

## Turn it on

1. Open **Settings** > **Clinic Settings** and find the **Front Desk Check-in** section.
2. Switch on **Enable Check-in Page**.
3. Set an **Access PIN** (up to 6 digits) if you want a code gate on top of the private link. Leave it blank to skip the PIN.
4. If your clinic uses DrChrono, optionally choose **Default Appointment Profiles** to pre-filter the kiosk to the schedules your front desk cares about.
5. Click **Save Settings**.

## Share the link

Once saved, the section shows the **Check-in URL**, a link with a long, random key baked into it. Share it with your front-desk staff and bookmark it on the check-in computer or tablet. Anyone with the link (and the PIN, if set) can use the kiosk; nobody needs an RTMLink login.

> **How it stays private.** The kiosk is reachable only by its exact link: the random key acts as the password, so a guessed or wrong address simply shows "page not found". The optional PIN adds a second gate, and no patient information loads until the PIN is entered. Treat the link like a key, and reset it by turning check-in off and back on if it is ever shared too widely.

## Who sets it up

Enabling and configuring check-in is a Clinic Owner task, done once in Clinic Settings.

## Related articles

- [Using the check-in kiosk](using-the-check-in-kiosk.md)
- [Enrolling and managing patients at check-in](enrolling-and-managing-at-check-in.md)
- [Clinic settings overview](../settings/clinic-settings-overview.md)
