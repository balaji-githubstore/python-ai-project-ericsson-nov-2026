import requests

response=requests.get("https://petstore.swagger.io/v2/pet/5")
print(response)

print(response.status_code)

print(response.json())

print(response.text)

print(response.json()["id"])
print(response.json()["name"])
print(response.json()["status"])

print(response.json()["category"]["id"])

print(response.json()["tags"])
print(response.json()["tags"][0])
print(response.json()["tags"][0]["id"])

print(response.headers)