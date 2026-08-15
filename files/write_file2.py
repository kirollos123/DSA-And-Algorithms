path = 'outpuit2.txt'
lines =['hry ', 'your name ?']
with open  (path,'w')as file :
  for line in lines :
    file.write(line+ '\n')