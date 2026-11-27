import requests
import json

url = "https://generativelanguage.googleapis.com/v1beta/interactions"

payload = json.dumps({
  "model": "gemini-3.5-flash-lite",
  "input": "Explain how TCP congestion control works in two sentences."
})
headers = {
  'Content-Type': 'application/json',
  'x-goog-api-key': ''
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)

