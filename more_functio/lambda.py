def sql(x):
    return x * x


print(sql(3))  # 9


def sq2(x): return x * x


print(sq2(3))  # 9


def name1(first, second):
    return f'{first} - {second}'


print(name1('mostafa', 'saad'))  # mostafa - saad


def name2(first, second): return f'{first} - {second}'


print(name2('mostafa', 'saad'))  # mostafa - saad

print((lambda x, y: x * y)(2, 4))  # 8
