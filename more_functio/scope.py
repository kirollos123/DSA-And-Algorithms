def outer ():
  outer_loc=30
  def inner ():
    print(outer_loc)
    inner ()
outer ()