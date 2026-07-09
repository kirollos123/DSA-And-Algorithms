num = [1, 2, 3]
let = ['a', 'b', 'c']
words = ['kirollos', 'ahmed', 'mohamed']
for idx, tuple_item in enumerate(zip(num, let, words)):
    print(idx, tuple_item)
for idx,(number,letter,word) in enumerate(zip(num,let,words)):
    print(idx,number,letter,word)