file = None 
try:
    path, idx = input().split()
    idx = int(idx)

    with open(path, 'r') as file:
        lst = file.read().splitlines()

    print(lst[idx])
except OSError:
    print('catcg al os error')
except :
    print('Something else ')
finally:
    if file is not None : 
        file.close 
 