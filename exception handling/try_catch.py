def read_int(msg):
  try:
      age=input(msg)
      age=int(age)
  except:
    print('invalid input')
    age =None
  return age 
age=read_int(":enter age ")
print(age )

