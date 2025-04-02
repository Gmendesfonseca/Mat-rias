class GerenciaUsuario:
    def __init__(self):
        """Inicializa a lista de usuários vazia"""
        self.usuarios = []

    def add_usuario(self, username):
        """Adiciona um usuário à lista se o nome não estiver vazio"""
        if not username:
            raise ValueError("O nome de usuário não pode ser vazio")
        self.usuarios.append(username)

    def del_usuario(self, username):
        """Remove o usuário da lista se ele existir"""
        if username in self.usuarios:
            self.usuarios.remove(username)

    def loc_usuario(self, username):
        """Verifica se o usuário está na lista"""
        return username in self.usuarios
