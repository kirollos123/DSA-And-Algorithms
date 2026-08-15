path ='data.txt'
lines =[]
with open (path ,'r')as file:
  lines =file.read().splitlines()
print(lines)