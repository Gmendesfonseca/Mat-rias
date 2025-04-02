
produto1 = ['Leite', 10, 5.6]
produto2 = ['Pão', 5, 0.75]
produto3 = ['Café', 1, 25.5]

compras = [produto1, produto2, produto3]

for p in compras:
    print("Produto: %s" % p[0])
    print("QTD....: %d" % p[1])
    print("Preço..: %.2f" % p[2])