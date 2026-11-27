# pip install ollama


import ollama

response=ollama.chat(
    model="deepseek-v4.1-flash:1017-cloud",
    messages=[{
        "role": "user", 
        "content": "Generate json response with key name, city, country"
        }]

)

print(response["message"]["content"])

