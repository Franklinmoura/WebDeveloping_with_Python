import random, string


tamanho = int(input('Digite o tamanho da senha que voce gostaria: '))
chars = string.ascii_letters + string.digits + '!@#$%ˆ&*()-=+_'
rnd = random.SystemRandom()

print(''.join(rnd.choice(chars) for i in range(tamanho)))

