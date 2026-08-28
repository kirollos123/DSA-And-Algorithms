tup =1,2,3,4,5
a,b,*c=tup
*a,b,c=tup
a, *b,c = tup
a, *b, c ,d= tup
def f (*args):
  print(args)


f(1, 2, 3, 4, 5)
f(tup)
f(*tup)