try:
    path, idx = input().split()
    idx = int(idx)

    with open(path, 'r') as file:
        lst = file.read().splitlines()

    print(lst[idx])
except BaseException as e :
    error =str (e)
    print( error)
