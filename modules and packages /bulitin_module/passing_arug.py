from datetime import datetime
def hello(curdate=datetime.now()):
  print(curdate)
for i  in range (10):
  hello()


def hello2(curdate=None):
  if curdate is None :
    curdate = datetime.now()
  print(curdate)


for i in range(10):
  hello2()
