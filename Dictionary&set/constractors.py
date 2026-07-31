
a = {'one': 1, 'two': 2, 'three': 3}


b = dict({'three': 3, 'one': 1, 'two': 2})


c = dict([('two', 2), ('one', 1), ('three', 3)])


d = dict(one=1, two=2, three=3)


e = dict({'one': 1, 'three': 3}, two=2)


f = dict(zip(['one', 'two', 'three'], [1, 2, 3]))

print(a == b == c == d == e == f)
