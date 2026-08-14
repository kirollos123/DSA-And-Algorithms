# shapes/__init__.py
# وجود الملف ده هو اللي بيخلي "shapes" package مش مجرد فولدر

from .circle import circle_area
from .square import square_area

# __all__ بيحدد ايه اللي هيتاخد لو حد عمل: from shapes import *
__all__ = ["circle_area", "square_area"]
