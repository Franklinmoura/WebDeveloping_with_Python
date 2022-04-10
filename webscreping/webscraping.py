from bs4 import BeautifulSoup
from lxml import html

import requests

site = requests.get("https://climatempo.com.br").content

#objeto esta recebendo todo o conteudo da requisicao

soup = BeautifulSoup(site, 'html.parser')

## Esta baixando todo o conteudo

#print(soup.prettify())
temperatura = soup.find("div",class_="")
print(temperatura.string)
print(soup.title.string)
print(soup.a.string)
print(soup.p.string)
print(soup.img.string)
print(soup.div)
print(soup.findall('Temperatura'))
### prettify torna o site em string




