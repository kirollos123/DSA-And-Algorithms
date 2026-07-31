dict = {
    int: [6, 9, 10],
    float: 10,
    6: 20,

    6: 70,
    6: 80,
}
print(dict[float])
print(dict[6])
print (dict.setdefault(6,-8))
print(dict .setdefault(7,20))
print(dict[7])