my_str ='kirollos'
my_str=my_str[:3]+my_str[3].upper()+my_str[:4]
print(my_str)
my_str2=my_str
print(my_str is my_str2)
print(id(my_str))
my_str += 'nabil'
print(id(my_str))
print(id(my_str2))
print (my_str is my_str2)