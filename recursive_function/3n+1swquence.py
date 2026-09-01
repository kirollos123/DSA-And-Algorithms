def print_3n_plus_1(n):
  print(n,end='')
  if n==1 :
    return 
  if n%2==0:
    print_3n_plus_1(n//2)
  else:
    print_3n_plus_1(3*n+1)
print_3n_plus_1(6)