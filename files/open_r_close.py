path = "data.txt"

file = open(path, "r")

for line in file:
    print(line, end="")

file.close()
