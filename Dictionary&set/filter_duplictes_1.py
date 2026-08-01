def filter_dub_(lst_of_lists):
    st = set()
    result = []
    for lst in lst_of_lists:
        tup = tuple(lst)
        if tup not in st:
            st .add(tup)
            result.append(lst)
    return result
