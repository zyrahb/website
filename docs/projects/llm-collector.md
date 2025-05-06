---
title: LLM Data collector
description: Gemini wrapper
---
May 2025

# LLM Data collector

[repo](https://github.com/zyrahb/llm-collector)

Gemini wrapped in a cloud function to create an API.

![](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExc3EwcGhwOWkyZGNkYXM0amd4emR2c2pvdGUybzV6MXp2ZTJpYjJweCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xT9C25UNTwfZuk85WP/giphy.gif)

### Example Use
	curl -X POST https://us-central1-neoval-sandbox.cloudfunctions.net/llm-collector \
		-H "Authorization: bearer $$(gcloud auth print-identity-token)" \
		-H "Content-Type: application/json" \
		-d '{"prompt": <LLM prompt be specific about the output>, "texts": [<List of things to look up>], }'

#### Response

```json
{
  "China": "Beijing",
  "Australia": "Canberra",
  "USA": "Washington, D.C."
}
```