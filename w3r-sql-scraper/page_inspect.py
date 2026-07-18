import requests

url = "https://www.w3resource.com/sql-exercises/sql-boolean-operators.php"
headers = {"User-Agent": "Mozilla/5.0"}

response = requests.get(url, headers=headers, timeout=15)
html = response.text

# نلاقي مكان أول ظهور لكلمة "Click me to see the solution"
marker = "Click me to see the solution"
idx = html.find(marker)

print("Found marker at index:", idx)
print("-" * 60)
# نطبع 1500 حرف قبل المارکر ده عشان نشوف شكل الـ HTML اللي بيلف السؤال
print(html[max(0, idx-1500):idx+200])