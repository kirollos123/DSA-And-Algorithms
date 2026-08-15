path ='data_utf8.txt'
with open (path, 'r' ,encoding='utf-8')as file:
  lines=file.read().splitlines()
  print(lines)
with open (path, 'r' , encoding='ASCII')as file:
  lines=file.read().splitlines()
  print(lines)