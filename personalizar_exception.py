class Error(Exception):
    pass

class InputError(Error):
    def __init__(self, message):
        self.message = message


while True:
    try:
        x = int(input('Etnre com uma nota de 0 a 10: '))
        print(x)
        if x > 10:
            raise InputError('Nota nao pode ser maior que 10!') # raise comando para forcar excessao.
        elif x < 0:
            raise InputError('Nota nao pode ser menor que 0!')
        break
    except ValueError:
        print('Valor invalido. Deve-se digitar apenas numeros')
     
    except InputError as ex:
        print(ex)
