import datetime 
dt =datetime.datetime(2026,1,11,14,7,59,300)
print(dt.ctime())
newdt=dt.replace(year=1990,day=25 ,second=13)
print(newdt)
delta = dt - newdt
print(delta, type(delta))
print(delta.seconds)

print(delta.total_seconds())
