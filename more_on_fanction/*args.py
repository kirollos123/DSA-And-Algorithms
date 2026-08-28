lst1=[1,2,3]
lst1 = [4,5,6]
lst1=[7,8,9,10,11,12,13]
print(lst1)
print(*lst1)
conc=[*lst1,*lst2]
l1,l2,l3=zip (*zip(lst1,lst2,lst3))
print(l1, l2,l3)