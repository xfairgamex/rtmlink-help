---
description: "RTMLink's HIPAA-minded settings and record-keeping: the automatic session timeout, RTM program consent capture, and the seven-year audit trail behind the scenes."
---

# Security and compliance

RTMLink handles protected health information, so a few settings and behaviors exist purely to keep your clinic compliant. This guide covers the two you control in Clinic Settings, plus what RTMLink does automatically. Both settings live on the Clinic Settings page, which only the Clinic Owner can open.

## Session timeout

The **Security** section sets **Session Timeout (minutes)**: how long a signed-in user can sit idle before RTMLink logs them out. It ranges from 5 to 60 minutes and defaults to 15. HIPAA guidance recommends 15 minutes or less, which is a sensible default for a shared clinic computer.

## RTM program consent

The **Patient Consent** section has one toggle, **Require RTM Program Consent**. Turn it on and every new enrollment records how the patient consented, verbally, on paper, or digitally:

- **Digital consent** shows the patient a one-time consent form the first time they open their survey link. Surveys still send on their normal schedule.
- Verbal and paper consent are recorded by whoever enrolls the patient.

Turning this on affects new enrollments only; episodes already running are untouched. You can see where each episode's consent stands on the episode page. See [Viewing episode details](../episodes/viewing-episode-details.md).

## The audit trail

RTMLink keeps an audit trail of key actions (patient and episode changes, user management, and more) and retains it for seven years to meet HIPAA requirements. This log runs behind the scenes; there is no in-app viewer to browse it.

Where you can see history in the app: each billing claim carries a **Workflow History** panel showing who approved, rejected, or last exported it, and when. See [Approving and rejecting claims](../billing/approving-and-rejecting-claims.md).

## Related articles

- [Clinic settings overview](clinic-settings-overview.md)
- [Managing your account](managing-your-account.md)
- [Understanding your role](../getting-started/understanding-your-role.md)
