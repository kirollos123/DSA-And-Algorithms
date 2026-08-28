def f (a ,b ,*myargs ,**mykwargs):
  print(a, b , 'args',myargs,'kwargs',mykwargs)
f(1,2)

f(a=10,b=20)
f(1,2,x=10,y=20)
f(1,2,3,4,5,x=10,y=20)
