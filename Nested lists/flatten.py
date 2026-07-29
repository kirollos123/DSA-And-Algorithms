lst_of_lists=[ [1,2],[2],[4,5,6,7,8],[9,10,11]]
lst1=[]
for lst in lst_of_lists:
  for item in lst:
    lst1.append(item)
print(lst1)