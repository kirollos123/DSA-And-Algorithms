def mylist(x:str ,y)-> list:
  z:str =x+y
  res :list =[x,y,z]
  print(mylist.__annotations__)
  return res
mylist(10,20)