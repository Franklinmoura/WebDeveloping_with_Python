#https://docs.python.org/3/library/exceptions.html
lista = [1,10]
try:
    arquivo = open('test.txt', 'r')
    text0 = arquivo.read()
    divisao = 10 / 1
    numero = lista[1]
 
    #x = a
except ZeroDivisionError:
    print('Nao e possivel realizar uma divisao por zero')
    
except IndexError:
    print('Erro ao acessar um indice invalido da lista')
except BaseException as ex:
    print('Erro desconhecido. Erro: {}'.format (ex))
else:
    print('Executa quando nao ocorrer erro')
finally:
    print('Sempre execute')
    print('Fechando arquivo')