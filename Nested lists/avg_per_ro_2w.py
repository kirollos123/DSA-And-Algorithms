grades = [
    [50, 33, 40, 30],
    [35, 50, 44, 17],
    [30, 35, 50, 37],
    [50, 35, 44, 22],
    [50, 44, 50, 30],
    [50, 36, 18, 50],
    [35, 30, 47, 16]
]
def compute_row_avg(lst_of_lsts):
  return [sum(lst)/len (lst) for lst in lst_of_lsts]


print(compute_row_avg(grades))
