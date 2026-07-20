---
description: "Keeping the RTMLink inbox under control: marking conversations unread for follow-up, reading delivery statuses, and what happens behind the scenes when a text cannot be delivered."
---

# Managing conversations

A shared inbox needs a few habits to stay useful. This guide covers the follow-up workflow, what the delivery statuses tell you, and what RTMLink does automatically when a patient's phone stops accepting texts.

## Mark unread for follow-up

Opening a conversation marks it read for the whole team, so a message you read but cannot act on yet is easy to lose. Click **Mark unread** in the thread header to flag it: the conversation closes, floats back to the top of the list with its green unread badge, and stays there until someone opens it again. The same button lives in the slide-over composer on patient and episode pages.

## Reading delivery statuses

Under each outbound message:

- **Sending** means RTMLink has queued it with the carrier or mail service.
- **Sent** and **Delivered** track the handoff; **Read** appears where the channel confirms it.
- **Not delivered** in red means the message failed. The conversation row also picks up a red warning icon in the list.

One failed text is not always a crisis (carriers hiccup), but repeated failures usually mean the number is wrong, a landline, or the patient replied STOP.

## When texts do not deliver

RTMLink watches for undeliverable numbers and reacts on its own:

- **Same-day survey fallback**: if a survey text bounces as undeliverable and the patient has email enabled, that day's survey is automatically re-sent by email. There is no banner for this; you will simply see the failed text followed by an email in the patient's email conversation.
- **Email auto-enabled**: when a number is flagged undeliverable, RTMLink turns on email delivery for the patient's active episodes as a fallback and records it in the activity log.
- **The Episodes banner**: episodes whose patient's number has been rejected are counted in a banner at the top of the Episodes list, with a **Review** link that filters straight to them. Update the number or switch the episode to email from there.
- **Landline detection**: phone numbers are checked before the first survey ever sends, and the episode form warns you when a number is a landline that cannot receive texts. See [Enrolling a patient](../episodes/enrolling-a-patient.md) for the delivery options on the episode form.

> A patient who texts STOP is opted out at the carrier level. RTMLink respects it immediately; re-enabling texting requires the patient to text START, not a setting on your side.

## Related articles

- [The Messages inbox](the-messages-inbox.md)
- [Sending messages](sending-messages.md)
- [Enrolling a patient](../episodes/enrolling-a-patient.md)
