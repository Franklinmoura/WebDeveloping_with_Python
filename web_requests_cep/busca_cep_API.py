import requests



def retorna_dados_cep():
    cep = int(input("informe o CEP ou '0' para sair: "))
    response = requests.get("https://viacep.com.br/ws/{}/json".format(cep))
    print(response.status_code)
    print(response.json())
    dados_cep = response.json()
    print(dados_cep['logradouro'])
    print(dados_cep['complemento'])
    return dados_cep



if __name__ == '__main__':
    retorna_dados_cep()
    