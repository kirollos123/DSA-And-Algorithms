lst =['i', 'am' ,'kirollos', 'and ','you']
print(sorted)
print(sorted  (lst,key=str.lower))
print(sorted  (lst, key=len))
def fun (string):
  if not string :
    return ''
  return string [-1].lower ()
print (sorted (lst ,key =fun ))
n=len (max (lst,key=len))
def get_key(id):
  if id ==1:
    return str.lower
  return len_