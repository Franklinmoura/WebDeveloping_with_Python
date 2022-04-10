import requests

#code 200 - It is working
#code 400 - It is not working - It was not found

response = requests.get("https://viacep.com.br/ws/01001000/json/")
print(response.status_code)
print(response.text)
print(response.json())