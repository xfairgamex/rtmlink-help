---
description: "The question types you can add to an RTMLink check-in, how each one looks to the patient, and which ones support alert thresholds."
---

# Survey question types

When you build a check-in, each question is one of five types. This reference covers what each is for and how it behaves; for building a survey step by step, see [Creating a survey](../check-ins/creating-a-survey.md).

| Type | The patient sees | Good for | Alert thresholds |
| --- | --- | --- | --- |
| **Scale** | A 0 to 10 slider with your end labels | Pain, fatigue, difficulty ratings | Yes |
| **Yes/No** | Two tappable buttons | Simple check questions | No |
| **Multiple Choice** | One tappable button per option | Picking one answer from a set | No |
| **Numeric** | A number field | Counts, measurements | Yes |
| **Text** | A free-text box | Open comments and concerns | No |

## Alert thresholds

**Scale** and **Numeric** questions can carry an **alert threshold**: when a patient's answer matches the value you set, the response is flagged for follow-up at the severity you choose (Low, Medium, or High). This is how a high pain score surfaces to your team automatically.

## Featured questions

Any question can be marked **featured**, which shows its answer as its own column in the episode list, so you can scan a key value across many patients without opening each response.

## A note on required answers

All questions are optional for the patient; they can answer what is relevant and skip the rest. Design your check-ins knowing patients may leave some blank.

## Related articles

- [Creating a survey](../check-ins/creating-a-survey.md)
- [Understanding survey responses](../check-ins/understanding-survey-responses.md)
- [Glossary](glossary.md)
