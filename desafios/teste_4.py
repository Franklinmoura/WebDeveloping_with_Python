counter = 0
for i in range(6):
    number = float(input('entre com o numero: '))
    if number > 0:
        counter += 1
print("{} valores positivos ".format(counter))
