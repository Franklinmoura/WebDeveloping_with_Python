from email import message
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

print('Client Socket criado com sucesso!!!!')

host = 'localhost'
porta = 5433
mensagem = 'Ola servidor'

try:
    print('Cliente: '+ mensagem)
    s.sendto(mensagem.encode(), (host, 5432))
    
    dados, servidor = s.recvfrom(4096)
    dados = dados.decode()
    print('Client: ' + dados)
finally:
    print('Cliente: fechando a conexao')
    s.close()