L = [15, 3, 20, 22, 21]

p = int(input("Digite o valor a ser procurado: "))

for e in L:
    if e == p:
        print("Elemento %d localizado" % p)
        break
    else:
        print("Elemento não localizado")
        break

achou = False
x = 0

while x < len(L):
    if L[x]==p:
        achou = True
        break
    x+=1

if achou:
    print("Elemento %d localizado na posição %d" % (p, x))
else:
    print("Elemento não localizado")