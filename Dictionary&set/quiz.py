graph = {1: 5, 5: 3, 3: 2, 2: -1}

steps = 0
start = 1
while start != -1:
    start = graph[start]
    steps += 1

print(steps)
######
my_str = 'za'
my_lst = [5, 2, 3]

dct = {
    1: my_str,
    2: my_lst
}
my_lst.sort()
my_str = ''.join(sorted(my_str))

print(dct)
