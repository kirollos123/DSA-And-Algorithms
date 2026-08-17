try:
    path, idx = input().split()
    idx = int(idx)

    with open(path, 'r') as file:
        lst = file.read().splitlines()

    print(lst[idx])

except (ValueError, IndexError):
    print('ValueError or IndexError')

except FileNotFoundError:
    print('File not found')

except Exception as error:
    print('Something else:', error)
