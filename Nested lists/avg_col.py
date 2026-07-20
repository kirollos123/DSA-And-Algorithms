grades = [
    [50, 33, 40, 30],
    [35, 50, 44, 17],
    [30, 35, 50, 37],
    [50, 35, 44, 22],
    [50, 44, 50, 30],
    [50, 36, 18, 50],
    [35, 30, 47, 16]
]


def compute_col_avg(lst_of_lsts):
    col_avg = []

    for j in range(len(lst_of_lsts[0])):
        total = 0
        for i in range(len(lst_of_lsts)):
            total += lst_of_lsts[i][j]

        col_avg.append(total / len(lst_of_lsts))

    return col_avg

print(compute_col_avg(grades))
