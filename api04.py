# Importa a biblioteca 'json'.
import json

items = [
    {
        "id": 1,
        "name": "Bagulho",
        "description": "Apenas um bagulho",
        "location": "Em uma caixa"
    }, {
        "id": 2,
        "name": "Tranqueira",
        "description": "Apenas uma tranqueira qualquer",
        "location": "Em um gaveteiro"
    }, {
        "id": 3,
        "name": "Bagulete",
        "description": "Um bagulete qualquer",
        "location": "Na esquina"
    },  {      
        "id": 4,
        "name": "Pasta",
        "description": "Arquivos qualquer",
        "location": "No plastico"
    },  {
        "id": 5,
        "name": "Fichario",
        "description": "Uma folha qualquer",
        "location": "Sol amarelo"
    },  { 
        "id": 6,
        "name": "Caderno",
        "description": "Uma capa qualquer",
        "location": "Na frente"
    }
]


def get_all():  # Função que lê e lista todos os itens da coleção.

    # Converte a lista 'items' para json e retorna para o chamador.
    return json.dumps(items, indent=2)


def get_one(id):  # Função que lê um item específico, identificado pelo índice.

    # Testa os comandos para o caso de erros.
    try:
        id = int(id)  # Tenta converter o parâmetro para inteiro.

        for item in items:  # Loop que 'itera' cada item de 'items' e armazena em 'item'.
            # Extrai o valor da chave "id" do item e compara com o "id" passado como parâmetro.
            if item.get("id") == id:
                # Se os "ids" coincidem (True) retorna o item atual para o chamador como JSON.
                return json.dumps(item, indent=2)
            # Se os "ids" não coincidem, roda o próximo loop.
    except:
        # Ocorreu erro ao converter o parâmetro para inteiro.
        return False  # Retorna para o chamador com "False" .


def new(json_data):
    print(json_data)
    return


def get_data():

    # Recebe uma entrada pelo teclado e armazena em 'input_id'.
    input_id = input("Digite o ID do item: ")

    # Chama a função get_one(), passando o índice como parâmetro e aramazena em 'view'.
    view = get_one(input_id)

    # Se view tem dados, é equivalente a 'True'...
    if view:
        # Mostra o valor de view.
        print(view)

    # Se 'view' é 'False'.
    else:
        # Mostra mensagem de erro.
        print("Algo errado não deu certo!")


# Chama (call) a função get_all().
# print(get_all())

# get_data()


def new(json_data):
    # print('new → ', json_data)
    
    next_id = max(item["id"] for item in items)
    print('max → ', max_id)
    return


# JSON a ser gravado na coleção
my_json = '''
{
    "id": 6,
    "name": "Angola",
    "description": "Angola tem brasileiro",
    "location": "No país"
}
'''

new(my_json)
