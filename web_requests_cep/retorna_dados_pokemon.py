import requests


def retorna_dados_pokemon(pokemon):
    response = requests.get("https://pokeapi.co/api/v2/pokemon/{}/".format(pokemon))
    dados_pokemon = response.json()
    return dados_pokemon


if __name__ == '__main__':
    dados_pokemon = retorna_dados_pokemon('pikachu')
    print(dados_pokemon['sprites']['front_shiny'])
    
