nome = "Warner"
idade = 44
salario = 1000.55550
print("%s tem %d anos! Salário %5.2f" % (nome, idade, salario))

var = "O que são linguagens de programação de"
print(var.split())
print(var.count('de'))
print(var.index('programação'))
print("/".join(var.split()))
print(var.replace('a', '@'))

nome = input("Digite seu nome: ")
print("Bem vindo %s" % nome)

idade = int(input("Digite sua idade: "))
salario = float(input("Digite seu salário: "))
print("%s tem %d anos! Salário %5.2f" % (nome, idade, salario))

minutos = int(input("Minutos utilizados: "))
if minutos < 200:
    preco = 0.20
else:
    if minutos < 400:
        preco = 0.18
    else:
        preco = 0.15
print("Valor da fatura: R$ %5.2f" % (minutos + preco))

