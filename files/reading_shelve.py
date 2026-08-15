import shelve 
with shelve .open("data.shelve",'r')as shelf:
  for key in shelf.keys():
    print( key,shelf[key])
