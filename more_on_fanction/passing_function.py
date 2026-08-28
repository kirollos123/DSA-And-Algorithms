def procces(iterable ,fun ):
  sum =0
  for value in iterable:
    sum +=fun (value)
    return sum 
lst =[2,-4,6]
print(procces (lst,abs))
def sq (n):
  return n*n


print(procces(lst,sq))
funcs=[abs ,sq]
for f in  funcs:
  print(procces(lst,f))

