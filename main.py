import requests
import json
import sys

USERNAME = sys.argv[1]
URL = "https://api.github.com/users/"+USERNAME

r = requests.get(url = URL)
data = r.json()
json_write = json.dumps(data, indent=4)
with open('data.json', 'w') as file:
	file.write(json_write)
# f.write(data)
# print(data)
