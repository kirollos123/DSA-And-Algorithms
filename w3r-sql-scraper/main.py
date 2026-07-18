import os
import time
import requests
from categories import CATEGORIES
from parser import parse_category_page
from formatter import format_as_sql_notebook

HEADERS = {"User-Agent": "Mozilla/5.0"}
OUTPUT_DIR = "sql_notebook_output"


def main():
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    total_questions = 0
    failed = []

    for i, (name, url) in enumerate(CATEGORIES.items(), 1):
        print(f"[{i}/{len(CATEGORIES)}] بيجيب: {name} ...")

        try:
            resp = requests.get(url, headers=HEADERS, timeout=20)
            resp.raise_for_status()
        except Exception as e:
            print(f"   ❌ فشل تحميل الصفحة: {e}")
            failed.append(name)
            continue

        questions = parse_category_page(resp.text)

        if not questions:
            print(f"   ⚠️  لم يتم العثور على أسئلة (ممكن الصفحة دي شكلها مختلف)")
            failed.append(name)
            continue

        output_text = format_as_sql_notebook(name, url, questions)

        # اسم ملف آمن (من غير مسافات/رموز غريبة)
        safe_name = "".join(
            c if c.isalnum() or c in " -_" else "" for c in name)
        safe_name = safe_name.strip().replace(" ", "_")
        filepath = os.path.join(OUTPUT_DIR, f"{i:02d}_{safe_name}.sql")

        with open(filepath, "w", encoding="utf-8") as f:
            f.write(output_text)

        print(f"   ✅ {len(questions)} سؤال -> {filepath}")
        total_questions += len(questions)

        time.sleep(1)  # ادب مع السيرفر - ثانية بين كل طلب وطلب

    print("\n" + "=" * 60)
    print(f"تم! إجمالي الأسئلة اللي اتلقطت: {total_questions}")
    if failed:
        print(f"⚠️  تصنيفات فشلت أو محتاجة مراجعة يدوية ({len(failed)}):")
        for f_name in failed:
            print(f"   - {f_name}")


if __name__ == "__main__":
    main()
