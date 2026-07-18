def format_as_sql_notebook(category_name, category_url, questions):
    """
    بيرجع نص واحد (string) بصيغة SQL notebook لتصنيف كامل.
    """
    lines = []
    lines.append("-- " + "=" * 70)
    lines.append(f"-- {category_name}")
    lines.append(f"-- Source: {category_url}")
    lines.append("-- License: CC BY 4.0 - w3resource.com")
    lines.append("-- " + "=" * 70)
    lines.append("")

    for q in questions:
        lines.append(f"-- Q{q['number']}: {q['title']}")
        lines.append(f"-- {q['description']}")
        if q['table_name']:
            lines.append(f"-- Sample table: {q['table_name']}")
        if q['sample']:
            for row in q['sample'].strip("\n").split("\n"):
                lines.append(f"-- {row}")
        lines.append("")
        lines.append("-- Write your answer below:")
        lines.append("")
        lines.append("")
        lines.append("")
        lines.append("-- " + "-" * 70)
        lines.append("")

    return "\n".join(lines)


# ------- اختبار سريع -------
if __name__ == "__main__":
    import requests
    from parser import parse_category_page

    url = "https://www.w3resource.com/sql-exercises/sql-boolean-operators.php"
    headers = {"User-Agent": "Mozilla/5.0"}
    resp = requests.get(url, headers=headers, timeout=15)

    questions = parse_category_page(resp.text)
    output = format_as_sql_notebook(
        "Boolean and Relational Operators", url, questions)

    # نحفظ ملف تجريبي
    with open("test_output.sql", "w", encoding="utf-8") as f:
        f.write(output)

    print("تم الحفظ في test_output.sql")
    print("-" * 60)
    print(output[:800])  # نطبع أول جزء نشوف الشكل
