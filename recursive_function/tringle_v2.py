def print_tringle(level):
  if level == 0:
     return
  print_tringle(level-1)
  for i in range(0, level):
      print("*", end="")
  print("")
  


print_tringle(5)
