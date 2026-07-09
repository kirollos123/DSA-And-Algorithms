def f():
    return ((10, 20), (30, 40))


(a, b), (c, d) = f()
print(c)
all =f()
print(all)
sub=all[0]
print(sub[1])
print(all[0][1])
print(f()[0][1])