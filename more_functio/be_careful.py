def fun():

    lst = []

    for i in range(3):

        def f():
            return i

        lst.append(f)

    return lst


lst = fun()

for f in lst:
    print(f())
