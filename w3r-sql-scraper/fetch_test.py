import requests

url = "https://www.w3resource.com/sql-exercises/sql-boolean-operators.php"

headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
}

response = requests.get(url, headers=headers, timeout=15)

print("Status code:", response.status_code)
print("Length of page:", len(response.text))
print("-" * 50)
print(response.text[:1000])   # أول 1000 حرف بس نشوف الشكل
