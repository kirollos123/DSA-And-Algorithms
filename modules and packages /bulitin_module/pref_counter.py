import time
from time import perf_counter
start_time=perf_counter
for i in range (5):
  print(i)
  time.sleep(1)
end_time = perf_counter()
time_dif = end_time-start_time
print(time_dif)
