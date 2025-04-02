'''''
Ajustes Gerais: uso do inglês para nomenclatura, tipagem nas variáveis
'''''

users: list = []

# Redução de código para realizar o cadastro de users
def create_user(id: int, nome: str, email:str):
    users.append({'id':id, 'nome':nome, 'email':email})
    print(f"Usuário {nome} criado com sucesso!")

# Tratamento para quando nenhum user foi cadastrado
def read_user():
    if not users:
        print("Nenhum usuário cadastrado")
        return
    for user in users:
        print(user)

# Adicionada a validação de nenhuma propriedade a ser atualizada
# Adicionada a validação do id para atualização do usuário
# Alteração do email, independente do nome e inicialização com string vazia
# Alteração do primeiro if considerando que em mais casos o id será diferente
def update_user(id:int, nome:str='', email:str=''):
    if (not email and not nome):
        print('Não há nenhuma propriedade a ser atualizada')
        return
    if (not validate_user(id)):
        return
    for user in users:
        if not user['id'] == id: continue
        if nome:
            user['nome'] = nome
        if email:
            user['email'] = email
        print(f"Usuário {id} atualizado com sucesso!")
        return

# Adicionada a validação do id para atualização do usuário
# Correção na hora de encontrar o user a ser deletado
def delete_user(id:int):
    if (not validate_user(id)):
        return
    for user in users:
        if not user['id'] == id: continue
        users.remove(user)
        print(f"Usuário {id} deletado com sucesso!")

# Função criada para validação e reutilização de código
def validate_user(id:int):
    if not users or not any(user['id'] == id for user in users):
        print(f"Usuário {id} não encontrado.")
        return False
    return True

# Criação de mais casos de uso para teste das funcionalidades
read_user()
delete_user(1)
update_user(2)
update_user(3,'Caio')
print('\n')

create_user(1, "Alice", "alice@example.com")
create_user(2, "Bob", "bob@example.com")
create_user(3, "Caren", "charlie@example.com")

print('\n')
read_user()
print('\n')

update_user(id=3, nome="Charlie")
update_user(id=4, nome="Caren")

print('\n')
read_user()
print('\n')

delete_user(5)
delete_user(2)

print('\n')
read_user()
