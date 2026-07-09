lst=1,2,(5,6)
print(len(lst))
a,b,(c,d)=lst
print(a,b,c,d)
t=1,2,3,(4,(5,6))
a,b,c,(d,(e,f))=t
print(a,b,c,d,e,f)