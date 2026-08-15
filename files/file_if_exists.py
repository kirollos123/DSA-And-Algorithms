path = 'outpuit4.txt'
lines = ['hry ', 'your name ?']
with open(path, 'x')as file:
  for line in lines:
    file.write(line + '\n')