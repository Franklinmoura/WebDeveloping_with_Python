import hashlib


arquivo1 = 'a.txt'
arquivo2 = 'b.txt'


hash1 = hashlib.new('ripemd160')
hash1.update(open(arquivo1, 'rb').read())


hash2 = hashlib.new('ripemd160')
hash2.update(open(arquivo2, 'rb').read())



if hash1.digest() != hash2.digest():
    print(f'O arquivo: {arquivo1} e diferente do arquivo: {arquivo2}')
    print('O hast do arquivo 1 e: ', hash1.hexdigest())
else:
    print(f'O arquivo: {arquivo1} e diferente do arquivo: {arquivo2}')
    print('O hast do arquivo 1 e: ', hash2.hexdigest())
    
