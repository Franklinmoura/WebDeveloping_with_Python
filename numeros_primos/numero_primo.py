num = int(input('Digite o numero: '))
tot = 0
for cont in range(1, num +1): #### mais um é porque no python ele conta um a menos dentro do for. Ex 1 a 7 ele vai de um a 6
    if num % cont == 0:
        print('\33[33m', end='')
        tot +=1
    else:
        print('\33[31m', end='')
    print('{} '.format(cont), end='')
print('\n\033[mO Numero {} foi dividido {} vezes'.format(num, tot))
if tot ==2:
    print('E por isso ele é primo')
else:
    print('E por isso ele náo é primo7')
        