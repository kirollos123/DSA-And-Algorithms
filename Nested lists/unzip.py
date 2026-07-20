grades = [
    [50, 33, 40, 30],
    [35, 50, 44, 17],
    [30, 35, 50, 37],
    [50, 35, 44, 22],
    [50, 44, 50, 30],
    [50, 36, 18, 50],
    [35, 30, 47, 16]
]
def copmute_col_avg(lst_of_lsts):
  col_avg=[]
  for tup in zip(*lst_of_lsts):
    col_avg.append(sum (tup)/len(tup))
  return col_avg


print(copmute_col_avg(grades))
