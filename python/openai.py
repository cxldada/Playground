import os
import openai

openai.api_key = "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"

response = openai.Completion.create(
  model="text-ada-001",
  prompt="你拥有思维方式吗？",
  temperature=1,
  max_tokens=256,
  top_p=1,
  frequency_penalty=0,
  presence_penalty=0
)

print("cxl");
