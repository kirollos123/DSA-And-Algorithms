def f(*args ,**kwargs):
  print('args', args, 'kwargs', kwargs)
f(1,2)
f(a=10,b=20)
f(1,2,a=10,b=20 )