import pytest

from crud import GerenciaUsuario

@pytest.fixture
def gerencia_usuario():
    """Fixture para criar uma instância do UserManager"""
    return GerenciaUsuario()

def test_add_usuario(gerencia_usuario):
    """Teste para adicionar um usuário"""
    gerencia_usuario.add_usuario("Ana")
    assert "Ana" in gerencia_usuario.usuarios

def test_del_usuario(gerencia_usuario):
    """Teste para remover um usuário da lista"""
    gerencia_usuario.add_usuario("Ligia")
    gerencia_usuario.del_usuario("Ligia")
    assert "Ligia" not in gerencia_usuario.usuarios

def test_loc_usuario(gerencia_usuario):
    """Teste para verificar se o usuário está na lista"""
    gerencia_usuario.add_usuario("Warner")
    assert gerencia_usuario.loc_usuario("Warner") is True
    assert gerencia_usuario.loc_usuario("Ana") is False
