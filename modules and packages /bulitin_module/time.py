import time 
if __name__ =='__main__':
  print(time.gmtime(0))
  print(time.localtime())
  print(time.localtime().tm_hour)
  print(time.localtime()[3])
  print(time.time())