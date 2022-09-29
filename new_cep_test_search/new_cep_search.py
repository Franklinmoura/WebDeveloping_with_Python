import requests
from flask import Flask, render_template, request
import datetime

app = Flask(__name__)

@app.route("/", methods=["GET","POST"])

def home():
    if request.method == "POST":
        entry_content = request.form.get("content")
        formatted_date = datetime.datetime.today().strftime("%Y-%m-%d")
        print(entry_content, formatted_date)
        
    return render_template("index.html")


'''

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

    
    '''




if __name__ == '__main__':
    app.run(debug=True)