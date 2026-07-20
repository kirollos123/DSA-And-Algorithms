def print_lst_of_lsts(lst_of_lsts):
  for lst in lst_of_lsts:
    print(lst)


def read_lst_of_lests_ints():
  rows = int(input())
  lst_of_lsts = [0]*rows
  for row in range(rows):
      lst_of_lsts[row] = list((map(int, input().split())))
  return lst_of_lsts


lsts = read_lst_of_lests_ints()

print_lst_of_lsts(lsts)
