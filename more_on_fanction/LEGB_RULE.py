glob1= 20
def outer ():
  outer_loc1=30
  x =15
  def inner ():
    inner_loc =-5
    x =7 
    print(inner_loc)
    print(x)
    print(outer_loc1)
    print(outer_loc2)
    print(glob1)
  outer_loc2=40
  inner ()
  print(x)
outer()

