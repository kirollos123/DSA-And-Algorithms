def add_value(lst_of_lists, value):
    new_lst_of_lists = []
    for lst in lst_of_lists:
        new_lst = lst.copy()
        new_lst.extend(value)
        new_lst_of_lists.append(new_lst)
    return new_lst_of_lists


lst_of_lists = [[1, 2], [2], [4, 5, 6, 7, 8], [9, 10, 11]]
value = [10,2,46,7,8,9]


print(add_value(lst_of_lists, value))
