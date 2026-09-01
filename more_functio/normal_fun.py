
s = lambda *args: sum(args)

print(s(1, 2, 3))


res = (lambda **kwargs: sum(kwargs.values()))(
    A=1, B=2, C=3, D=4
)

print(res)


glob = 5


def fun():

    x = 10

    def inner(y):
        return y + x + glob

    return inner


f = fun()

print(f(5))

