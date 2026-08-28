def abs_sum (a,b,c):
  def my_abs(x):
    if x <0:
      return -x 
    return x 
  return my_abs(a)+my_abs(b)+my_abs(c)
print(abs_sum (10,-20,30) )

    