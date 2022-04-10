import itertools

word = input("String a ser permutada: ")

resultado = itertools.permutations(word, len(word))

for i in resultado:
    print(''.join(i))