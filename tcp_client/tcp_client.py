import socket
import sys


def main():
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
    except socket.error as error:
        print('A conexáo falhou')
        print('Error: {}'.format(error))
        sys.exit()
    print('Socket criado com suscesso')
    HostAlvo = input('Digite o IP ou hostname para conexao: ')
    PortaAlvo = input('Digite a porta a ser conectada: ')
    try:
        s.connect((HostAlvo, int(PortaAlvo)))
        print('Cliente TCP conectado com sucesso no host ' + HostAlvo + ' e na porta ' + PortaAlvo )
        s.shutdown(2)
        
    except socket.error as error:
        print('Nao foi possivel conectar no host: ' + HostAlvo) 
        print('Error: {}'.format(error))
        sys.exit()   
if __name__ == '__main__':
    main()
    
            