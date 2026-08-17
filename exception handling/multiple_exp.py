try:
    path, idx = input().split()
    idx = int(idx)

    file = open(path, 'r')
    lst = file.read().splitlines()
    print(lst[idx])

    file.close()
except ValueError:
    print('ValueError')
except IndexError:
    print('IndexError')
except FileNotFoundError:
    print('FileNotFoundError')
except:
    print('Something else')
