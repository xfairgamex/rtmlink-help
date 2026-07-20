---
description: "A side-by-side comparison of what each RTMLink clinic role can do: Clinic Owner, Provider, Staff, Billing Staff, and Auditor."
---

# Role permissions matrix

RTMLink has five clinic roles. This table compares what each can do; for a fuller description of each role, see [Understanding your role](../getting-started/understanding-your-role.md).

| Capability | Clinic Owner | Provider | Staff | Billing Staff | Auditor |
| --- | --- | --- | --- | --- | --- |
| View patients and episodes | Yes | Yes | Yes | Yes | Yes |
| Add and edit patients | Yes | No | Yes | No | No |
| Enroll patients | Yes | Yes | Yes | No | No |
| Pause, resume, discharge episodes | Yes | Yes | No | No | No |
| Build and edit surveys | Yes | No | No | No | No |
| Review responses, mark read | Yes | Yes | No | No | View only |
| Log provider time | Yes | Yes | Yes | Yes | No |
| Send patient messages | Yes | Yes | Yes | No | View only |
| Approve, reject, export claims | Yes | Own patients | No | Yes | View only |
| Manage the team | Yes | No | No | No | No |
| Change clinic settings | Yes | No | No | No | No |
| View the audit trail | Yes | No | No | No | Yes |

Notes:

- **Provider** billing actions are scoped to their own assigned patients' claims.
- **Auditor** is read-only across the whole clinic by design, ideal for compliance review.
- Only the **Clinic Owner** manages the team and clinic-wide settings.

## Related articles

- [Understanding your role](../getting-started/understanding-your-role.md)
- [Adding team members](../users/adding-team-members.md)
- [Glossary](glossary.md)
