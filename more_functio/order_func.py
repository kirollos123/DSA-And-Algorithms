lst= ['i', 'am','kirollos' ,'and ', 'you ','']
def fun(string):
  if not string :
    return ''
  return string [-1].lower()
print(sorted (lst, key=lambda string : ' ' if not string else string  [1].lower()))
print(sorted (lst, key=lambda string : string [-1].lower() if string else '' ))