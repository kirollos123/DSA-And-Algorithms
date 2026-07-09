items = list(zip(range(10, 15), range(100)))

print(items)
seq1 ,seq2 =zip (*items)
print(seq1)
print(seq2)
