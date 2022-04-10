import re
import json
from urllib.request import urlopen
import ssl
url = 'https://ipinfo.io/json'
import ssl
ssl._create_default_https_context = ssl._create_unverified_context



resposta = urlopen(url)

dados = json.load(resposta)


ip = dados['ip']
org = dados['org']
cid = dados['city']
pais = dados['country']
regiao = dados['region']


print('Detalhes do IP externo\n')
print('IP: {4}\nRgiao: {1}\nPais: {2}\nCidade: {3}\n\Organizacao: {0}'.format(org, regiao, pais, cid, ip))