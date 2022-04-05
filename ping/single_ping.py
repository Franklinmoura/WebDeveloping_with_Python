import os

print("#" * 60)

ip_ou_host = input('Digite o IP ou o host a ser verificado: ')

print('-' *60)

os.system('ping {}'.format(ip_ou_host))