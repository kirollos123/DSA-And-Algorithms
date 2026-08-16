import shelve

with shelve.open('mydata') as shelf:
    print(list(shelf.keys()))

    if 'data' in shelf:
        del shelf['data']
