import pickle

data = (2021, '4444', ((7, 'wow'), [4, 5]))
lst = [1, 251221, 30000]

with open("data.pickle", "wb") as pickle_file:
    pickle.dump(data, pickle_file)
    pickle.dump(lst, pickle_file)
