def process1(iterable, fun):

    sum = 0

    for value in iterable:
        sum += fun(value)

    return sum


def process2(iterable, fun): return sum(fun(value) for value in iterable)


lst = [2, -4, 6]

print(process1(lst, abs))
print(process2(lst, abs))
print(process2(lst, lambda x: x * x))
