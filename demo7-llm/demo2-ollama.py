# pip install ollama
""" olama llm """

import ollama

response=ollama.chat(
    model="gemma3:1b",
    messages=[{
        "role": "user", 
        "content": "Generate json response with key name, city, country"
        }]

)

print(response)

print(response["message"]["content"])

