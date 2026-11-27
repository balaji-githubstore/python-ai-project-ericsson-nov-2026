from google import genai

client = genai.Client(api_key="")

response = client.models.generate_content(
    model="gemini-3.5-flash-lite",
    contents="need json data with name, country, ages",
    config={"temperature": 0.7}
)

print(response.text)