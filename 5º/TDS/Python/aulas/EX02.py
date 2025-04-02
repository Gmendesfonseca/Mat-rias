categoria = int(input('Categoria do Produto: '))
if categoria == 1:
    preco = 10
elif categoria == 2:
    preco = 15
elif categoria == 3:
    preco = 20
else:
    print("Categoria inválida!")
    preco = 0

print("Valor do produto %5.2f" % preco)