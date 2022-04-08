import hashlib
import string

string = input("Digite o texto a ser gerado: ")

menu = int(input('''### ESCOLHA O TIPO DE HASH ####
             1) MD5
             2) SHA1
             3) SHA256
             4) SHA512
             Digite o numero do hash a server gerado: '''))
             

if menu == 1:
    resultado = hashlib.md5(string.encode('utf-8'))
    print("A hash MD5 da string: ", string, 'e: ', resultado.hexdigest())
elif menu == 2:
    resultado = hashlib.sha1(string.encode('utf-8'))
    print("A hash MD5 da string: ", string, 'e: ', resultado.hexdigest())
elif menu == 3:
    resultado = hashlib.sha256(string.encode('utf-8'))
    print("A hash MD5 da string: ", string, 'e: ', resultado.hexdigest())

elif menu == 4:
    resultado = hashlib.sha512(string.encode('utf-8'))
    print("A hash MD5 da string: ", string, 'e: ', resultado.hexdigest())
else:
    print("Algo de errado nao deu certo")


