globl = 20


def outer():
    outer_loc1 = 30

    def inner():
        global globl
        globl += 1
        nonlocal outer_loc1
        outer_loc1 += 1
    inner()

    print(outer_loc1)


outer()
print(globl)
