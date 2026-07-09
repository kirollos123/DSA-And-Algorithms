numbers = [1, 2, 3]
let = ['a', 'b', 'c']
words = ['kirollos', 'ahmed', 'mohamed']
for tuple_item in zip(numbers, let, words):
    print(tuple_item)
for number, letter, word in zip(numbers, let, words):
    print(number, letter, word)