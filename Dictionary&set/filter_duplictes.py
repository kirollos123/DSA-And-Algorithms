def filter_duplicates(lists):
    return list(dict.fromkeys(map(tuple, lists)))

if __name__== "__main__":
    print(filter_duplicates([[7,1], [2,4], [7,1], [5,2], [2,4]]))