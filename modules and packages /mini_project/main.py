# main.py
from shapes import *
from shapes import circle_area, square_area
import config
import sys
import os

# --- Module Search Path ---
# بايثون بيدور على الملفات اللي هتعمله import في المسارات دي
print("Python بيدور في الأماكن دي:")
for path in sys.path:
    print(" -", path)

print("-" * 40)

# --- os module ---
print("المجلد الحالي اللي شغال فيه:", os.getcwd())
print("محتويات المجلد:", os.listdir("."))

print("-" * 40)

# --- استيراد module عادي ---
config.show_info()

# --- Module vs Script ---
print("-" * 40)
print("__name__ في main.py =", __name__)
# لما تشغل الملف ده مباشرة، __name__ هتبقى "__main__"
print("مساحة الدايرة:", circle_area(5))
print("مساحة المربع:", square_area(4))

# أو استيراد الكل مرة واحدة (بيستخدم __all__)
print(circle_area(2), square_area(3))
