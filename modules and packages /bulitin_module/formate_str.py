import time 
if __name__ =='__main__':
  tm=time.localtime()
  string=time.strftime('%c',tm)
  print(string)
  # Fri Aug 14 19:28:06 2026

tm2=time.strptime(string)
print(tm2.tm_hour)