path = 'outpuit3.txt'
lines = ['hry ', 'your name ?']
with open(path, 'a')as file:
  for line in lines:
    file.write(line+'\n')
