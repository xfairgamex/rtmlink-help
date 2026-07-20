---
description: "Mapping RTMLink to DrChrono after connecting: matching providers to DrChrono doctors, setting export defaults, and mapping exam rooms so billing claims export to the right place."
---

# DrChrono provider mappings

After connecting DrChrono, a few mappings tell RTMLink how your clinic lines up with your DrChrono account. They live on the **Integrations** page below the connected card and make sure synced patients land on the right provider and exported claims reach the right appointment.

## Provider Mapping

The **Provider Mapping** section lists each RTMLink provider with a dropdown of your DrChrono doctors. Match each one, or leave it **Not mapped**, then click **Save Mappings**. This is what links synced patients to the correct provider.

## DrChrono Export Defaults

The **DrChrono Export Defaults** section sets the **Default Provider** and **Default Office** used when a billing claim is sent to DrChrono. These are the fallback when an appointment does not specify them, and can be overridden per claim. If your clinic has a dedicated RTM provider, choose it here. Click **Save Defaults**.

## Exam Room Mapping

The **Exam Room Mapping** section maps each provider to a DrChrono exam room index (the 0-based numbers from your DrChrono office settings). When you export a claim, the exam room is picked automatically from the episode's assigned provider. Click **Save Exam Room Mappings**.

## Who sets the mappings

Mappings are configured by the Clinic Owner as part of setting up the integration.

## Related articles

- [Connecting DrChrono](connecting-drchrono.md)
- [Exporting to DrChrono](../billing/exporting-to-drchrono.md)
- [Viewing appointments](../appointments/viewing-appointments.md)
