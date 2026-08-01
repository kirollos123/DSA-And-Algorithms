line = input()
dict = {}
for char in line:
    char = char.lower()
    dict.setdefault(char, 0)
    dict[char] += 1
for key in sorted(dict):
    print( f"letter {key} repeated  {dict[key]} times")
    
