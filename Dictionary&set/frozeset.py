st1= frozenset([7,5,1,8])
print(id(st1))
st1|={20 ,10}
print(id(st1))

dct={st1:5}
for item in sorted(dct):
  print(item ,end ='  ')