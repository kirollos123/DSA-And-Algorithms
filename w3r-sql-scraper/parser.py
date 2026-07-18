from bs4 import BeautifulSoup


def parse_category_page(html):
    """
    بياخد HTML لصفحة تصنيف واحدة، ويرجع list من dicts:
    [{"number": 1, "title": "...", "description": "...", "table_name": "...", "sample": "..."}, ...]
    """
    soup = BeautifulSoup(html, "lxml")
    questions = []

    # كل عناوين الأسئلة
    headers = soup.find_all("p", class_="p_h1")

    for h in headers:
        # نفصل الرقم عن العنوان -> "1. Customers with Grade > 100"
        full_text = h.get_text(strip=True)
        parts = full_text.split(".", 1)
        number = parts[0].strip() if len(parts) > 1 else ""
        title = parts[1].strip() if len(parts) > 1 else full_text

        description_parts = []
        sample_table_name = ""
        sample_data = ""

        # نمشي على العناصر اللي بعد العنوان لحد ما نوصل للعنوان التالي
        for sib in h.find_next_siblings():
            if sib.name == "p" and "p_h1" in (sib.get("class") or []):
                break  # وصلنا للسؤال اللي بعده - وقف

            if sib.name == "p":
                text = sib.get_text(" ", strip=True)
                if not text:
                    continue
                if text.lower().startswith("click me"):
                    continue
                if "sample table" in text.lower():
                    sample_table_name = text.replace(
                        "Sample table", "").replace(":", "").strip()
                elif "click me to see" not in text.lower():
                    description_parts.append(text)

            elif sib.name == "pre":
                sample_data = sib.get_text()

        questions.append({
            "number": number,
            "title": title,
            "description": " ".join(description_parts),
            "table_name": sample_table_name,
            "sample": sample_data,
        })

    return questions


# ------- اختبار سريع -------
if __name__ == "__main__":
    import requests

    url = "https://www.w3resource.com/sql-exercises/sql-boolean-operators.php"
    headers = {"User-Agent": "Mozilla/5.0"}
    resp = requests.get(url, headers=headers, timeout=15)

    result = parse_category_page(resp.text)
    print(f"عدد الأسئلة اللي اتلقطت: {len(result)}")
    print("-" * 60)
    for q in result[:3]:  # نطبع أول 3 بس للمعاينة
        print(f"Q{q['number']}: {q['title']}")
        print(f"  Desc: {q['description'][:100]}...")
        print(f"  Table: {q['table_name']}")
        print()
