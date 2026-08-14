# circular_problem/a.py
import circular_problem.b as b


def func_a():
    print("Function A")
    b.func_b()


func_a()
