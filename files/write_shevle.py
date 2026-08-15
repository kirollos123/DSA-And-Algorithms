import shelve 
data = (2021, '4444', ((7, 'wow'), [4, 5]))
lst = [1, 251221, 30000]

with shelve.open("data.shelve") as shelf:
 shelf['data'] = data
 shelf[' lst'] = lst
