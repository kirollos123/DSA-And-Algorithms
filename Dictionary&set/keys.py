dict = {'x': 11, 'b': 22, 'y': 30}
print(dict.items())
for key, value in dict .items():
    print(key, value)
print(dict .keys())
print(list(dict .keys()))
for key in dict.keys():
    print(key, dict[key])
for key in sorted (list (dict .keys ())):
    print (key,dict[key])
for key in sorted (dict):
    print(key,dict[key])