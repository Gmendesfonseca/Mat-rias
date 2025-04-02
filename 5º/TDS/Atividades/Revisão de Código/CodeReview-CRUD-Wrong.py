usuarios = []

def criar_usuario(id, nome, email):
    usuario = {
        'id': id,
        'nome': nome,
        'email': email
    }
    usuarios.append(usuario)
    print(f"Usuário {nome} criado com sucesso!")

def ler_usuarios():
    for usuario in usuarios:
        print(usuario)

def atualizar_usuario(id, nome=None, email=None):
    for usuario in usuarios:
        if usuario['id'] == id:
            if nome:
                usuario['nome'] = nome
            usuario['email'] = email 
            print(f"Usuário {id} atualizado com sucesso!")
            return
    print(f"Usuário com ID {id} não encontrado.")

def deletar_usuario(id):
    usuario = usuarios[id]
    usuarios.remove(usuario)
    print(f"Usuário {id} deletado com sucesso!")

criar_usuario("1", "Alice", "alice@example.com")
criar_usuario(2, "Bob", "bob@example.com")

ler_usuarios()

atualizar_usuario(3, nome="Charlie")

ler_usuarios()

deletar_usuario(5)

ler_usuarios()
