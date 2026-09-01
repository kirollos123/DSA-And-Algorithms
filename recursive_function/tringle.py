def print_tringle(level):
  if level ==0:
     return 
  for i in range (0 ,level):
      print("*",end="")
  print("")
  print_tringle(level-1)


print_tringle(5)
