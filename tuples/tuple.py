def f():
    return 1, 2, 3
    a, b, c = f()


together = f()
print(type(together))
x, y, x = together
my_tuple = (5, 6, 7)
x, y, z = together
x, y = y, x
print(x, y, z)