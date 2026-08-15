import pickle

with open("data.pickle", "rb") as pickle_file:
    data = pickle.load(pickle_file)
    lst = pickle.load(pickle_file)

print(data)
print(lst)
