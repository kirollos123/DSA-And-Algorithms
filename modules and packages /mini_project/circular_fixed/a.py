# circular_fixed/a.py

def func_a():
    import circular_fixed.b as b   # <-- الـ import جوه الـ function مش فوق
    print("Function A")
    b.func_b()
