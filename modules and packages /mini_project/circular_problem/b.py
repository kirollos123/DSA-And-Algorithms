# circular_problem/b.py
import circular_problem.a as a   # <-- ده هيسبب مشكلة


def func_b():
    print("Function B")
    a.func_a()
